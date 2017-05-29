import textwrap
import subprocess
import os

class PCBPCompile:
    # When using, creates both a temp file and the regular named file

    # Detects if the file is PCBPM_
    # A singular directory can be put in a PCBPM_ file
    # MultiCompile provides TP commands in the temp file
    # Teleport toggle flag: -tp
    #
    # import shutil
    # shutil.copyfile(src, dst)
    # os.rename(src, dst)

    def __init__(self, pathFile):
        '''Defines path files'''
        self.pathFile = pathFile
        self.pathCBPBase = os.path.basename(pathFile)
        self.pathPCBPBase = 'P' + self.pathCBPBase
        self.pathCBPcmdBase = 'CBP_' + self.pathPCBPBase[5:-4] + '_commands.txt'
        self.pathCBPcmbBase = 'CBP_' + self.pathPCBPBase[5:-4] + '_combiner.txt'
        self.pathLen = len(pathFile) - len(self.pathCBPBase)
        self.pathDirectory = pathFile[0:self.pathLen - 1]

        self.directoryPCBP = self.pathDirectory + '\\' + self.pathPCBPBase  # PCBP file
        self.directoryCBP = self.pathDirectory + '\\' + self.pathCBPBase  # CBP file
        self.directoryCMD = self.pathDirectory + '\\' + self.pathCBPcmdBase  # CMD file
        self.directoryCMB = self.pathDirectory + '\\' + self.pathCBPcmbBase  # Compiler file

        # self.pathDirectory2 = os.path.basename(pathFolder)

    def generalCompile(self, dirCBP, dirPCBP, svr, lenNum, CBPOutput):
        '''Parses a singular file from PCBP to CBP to CMP'''
        # The actual program stuff starts here lol
        print('Parsing: {}'.format(self.pathCBPBase))

        readPCBPFile = open(self.directoryPCBP, 'r')
        writeCBPFile = open(self.directoryCBP, 'w')
        CBPSplitList = readPCBPFile.read().split('\n')

        CBPOpen = None

        CBPImportCalcList = []
        CBPImportList = []
        CBPCalcList = []
        CBPSkipList = []
        CBPSkip2List = []
        CBPLineList = []

        # Detects all PCBPIMPORT commands
        for s in CBPSplitList:
            if s[:10] == 'PCBPIMPORT':
                CBPOpen = None
                CBPImport = dirPCBP + '\\' + s[11:]
                # print(s[11:])
                try:
                    CBPOpen = open(CBPImport, 'r')
                    CBPImportCalcList = CBPOpen.read().split('\n')
                except FileNotFoundError:
                    print('ERROR: File could not be found: {}'.format(s[11:]))
                finally:
                    if CBPOpen:
                        print('PCBPI File found: {}'.format(s[11:]))
                        for str in CBPImportCalcList:
                            CBPImportList.append(str)
                        CBPOpen.close()
            else:
                CBPImportList.append(s)

        # Replaces all || with |
        # Removes all spaces in front of the lines
        # Removes all gaps in between lines
        for s in CBPImportList:
            s = s.replace('||', '|')
            s = textwrap.dedent(s)
            if s[:2] != '//' and s.strip():
                CBPCalcList.append(s)
            elif s[:3] == '//#' or s[:3] == '//-' or s[:3] == '//=':
                CBPCalcList.append(s)

        # Skip line functionality using //- and \\-
        # TODO Add unskip line using -/-
        skipCalcNum = 0
        skipCalcBoolean = True
        while True:
            # print(skipCalcNum)
            s = CBPCalcList[skipCalcNum]
            if s[:3] == '//-':
                s = ''
                skipCalcNum += 1
                while True:
                    if CBPCalcList[skipCalcNum][:3] == '-/-':
                        CBPSkipList.append(s)
                        skipCalcNum += 1
                        s = ''
                        continue
                    if CBPCalcList[skipCalcNum][:3] == '\\\\-':
                        break
                    s = s + CBPCalcList[skipCalcNum]
                    # print("test")
                    skipCalcNum += 1
            CBPSkipList.append(s)
            skipCalcNum += 1
            if skipCalcNum == len(CBPCalcList):
                break
        # print(CBPSkipList)

        # Skip line functionality using ;
        skipCalc2Num = 0
        while True:
            # print(skipCalc2Num)
            s = CBPSkipList[skipCalc2Num]
            if s[-1:] == ';':
                skipCalc2Num += 1
                while True:
                    s = s[:-1] + CBPSkipList[skipCalc2Num]
                    if s[-1:] != ';':
                        break
                    skipCalc2Num += 1
            CBPSkip2List.append(s)
            skipCalc2Num += 1
            if skipCalc2Num == len(CBPSkipList):
                break
        # print(CBPSkip2List)

        # Comment block functionality using //= and \\=
        cblkCalcNum = 0
        while True:
            s = CBPSkip2List[cblkCalcNum]
            if s[:3] == '//=':
                while True:
                    s = '/// ' + CBPSkip2List[cblkCalcNum]
                    if CBPSkip2List[cblkCalcNum][:3] == '\\\\=':
                        break
                    cblkCalcNum += 1
                    CBPLineList.append(s)
            CBPLineList.append(s)
            cblkCalcNum += 1
            if cblkCalcNum == len(CBPSkip2List):
                break
        # print(CBPLineList)


        # TP Flag calculations start here while the CBP file is still open
        if '-b' in CBPLineList[0]:
            # print(CBPLineList[0], 'MARKER THING')
            tpFlagCalcList = CBPLineList[0].split(' ')
            # print(tpFlagCalcList)
            for i, s in enumerate(tpFlagCalcList):
                if s == '-b':
                    self.tpFlagCalc = tpFlagCalcList[i + 1] + ' ' + tpFlagCalcList[i + 2] + ' ' + tpFlagCalcList[i + 3]
                    # print(self.tpFlagCalc)
                    break


        for s in CBPLineList:
            writeCBPFile.write(s + '\n')

        readPCBPFile.close()
        writeCBPFile.close()

        # print(CBPLineList)

        # CBP initiation
        os.chdir(dirCBP)
        FileNull = open(os.devnull, 'w')

        if CBPOutput == False:
            subprocess.call(['java', '-jar', 'CBP.jar', self.pathFile, '-print', '-w', '6', '-c', 'Number', '-noreset', '-minbuild', '50', '-notrack'], stdout = FileNull)
        else:
            subprocess.call(['java', '-jar', 'CBP.jar', self.pathFile, '-print', '-w', '6', '-c', 'Number', '-noreset', '-minbuild', '50', '-notrack'])

        FileNull.close()

        # Converts CBP_name_commands to minecart command block chunks
        if svr:
            self.serverText = 'minecraft:'
        else:
            self.serverText = ''

        lenBeg = 'summon FallingSand ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:FallingSand,Block:redstone_block,Time:1,Passengers:[{id:FallingSand,Block:activator_rail,Time:1,Passengers:[{id:MinecartCommandBlock,Command:"'
        lenMid = '"},{id:MinecartCommandBlock,Command:"'
        lenEnd = '"},{id:MinecartCommandBlock,Command:"setblock ~ ~1 ~ chain_command_block 0 replace {Command:\\"fill ~ ~-4 ~ ~ ~2 ~ air\\",auto:1b}"},{id:MinecartCommandBlock,Command:"setblock ~ ~2 ~ command_block 0 replace {Command:\\"minecraft:kill @e[type=MinecartCommandBlock,r=10]\\"}"},{id:MinecartCommandBlock,Command:"setblock ~ ~3 ~ redstone_block"},{id:MinecartCommandBlock,Command:"summon FallingSand ~ ~-2 ~ {Block:command_block,Time:1s,TileEntityData:{TrackOutput:0b}}"},{id:MinecartCommandBlock,Command:"' + self.serverText + 'kill @e[type=MinecartCommandBlock,r=3]"}]}]}]}'

        lenCalcBeg = 'summon FallingSand ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:FallingSand,Block:redstone_block,Time:1,Passengers:[{id:FallingSand,Block:activator_rail,Time:1,Passengers:[{id:MinecartCommandBlock,Command:AAAA'
        lenCalcMid = 'AAAA},{id:MinecartCommandBlock,Command:AAAA'
        lenCalcEnd = 'AAAA},{id:MinecartCommandBlock,Command:AAAAsetblock ~ ~1 ~ chain_command_block 0 replace {Command:AAAAAAAAfill ~ ~-4 ~ ~ ~2 ~ airAAAAAAAA,auto:1b}AAAA},{id:MinecartCommandBlock,Command:AAAAsetblock ~ ~2 ~ command_block 0 replace {Command:AAAAAAAAminecraft:kill @e[typeAAAAAAMinecartCommandBlock,rAAAAAA10]AAAAAAAA}AAAA},{id:MinecartCommandBlock,Command:AAAAsetblock ~ ~3 ~ redstone_blockAAAA},{id:MinecartCommandBlock,Command:AAAAsummon FallingSand ~ ~-2 ~ {Block:command_block,Time:1s,TileEntityData:{TrackOutput:0b}}AAAA},{id:MinecartCommandBlock,Command:AAAA' + self.serverText + 'kill @e[typeAAAAAAMinecartCommandBlock,rAAAAAA3]AAAA}]}]}]}'

        readCMDFile = open(self.directoryCMD, 'r')
        writeCMBFile = open(self.directoryCMB, 'w')
        CMBSplitList = readCMDFile.read().split('\n')
        CMBLineList = []
        CMBLenList = []

        # Replaces all unnecessary stuff as well as " and \
        # Also does calculations for lencalc
        for s in CMBSplitList:
            s = s.replace(',CustomName:"CBP",LastOutput:"{\\"text\\":\\"Made with CBP\\"}"', '')
            s = s.replace('say Executing initial commands...', '')
            s = s.replace('\\', '\\\\')
            s = s.replace('"', '\\"')
            CMBLineList.append(s)
            s = s.replace('\\', 'AA')
            s = s.replace('"', 'AA')
            s = s.replace('=', 'AAAAAA')
            CMBLenList.append(s)

        # Creates a 2d list
        combinerList = list(zip(CMBLineList, CMBLenList, CMBSplitList))

        # print(combinerList)
        # s[2] is used if the length of one command is too long
        # s[2] is the original command, and will not reset itself
        fileLenEdit = lenBeg
        fileLenCalc = lenCalcBeg
        fileLenListNum = -1
        breakLoop = False

        while True:
            # print("End of a line")

            while True:
                # Analyzes the current line
                # print(combinerList[fileLenListNum][0])

                # This part is to end it once the combiner list is at nothing
                if not combinerList[fileLenListNum + 1][0]:
                    writeCMBFile.write(fileLenEdit + lenMid + 'say PCBP end' + lenEnd + '\n\n')
                    breakLoop = True
                    break

                # This part is if a singular command is too long
                if len(lenCalcBeg + combinerList[fileLenListNum + 1][1] + lenCalcEnd) >= lenNum:
                    writeCMBFile.write(fileLenEdit + lenEnd + '\n\n')
                    fileLenListNum += 1

                    while True:
                        if len(lenCalcBeg + combinerList[fileLenListNum + 1][1] + lenCalcEnd) < lenNum:
                            writeCMBFile.write(combinerList[fileLenListNum][2] + '\n\n')
                            print("Singular command is too long")
                            fileLenListNum += 1
                            fileLenEdit = lenBeg + combinerList[fileLenListNum][0]
                            fileLenCalc = lenCalcBeg + combinerList[fileLenListNum][1]
                            break

                        if len(lenCalcBeg + combinerList[fileLenListNum][1] + lenCalcEnd) >= lenNum:
                            writeCMBFile.write(combinerList[fileLenListNum][2] + '\n\n')
                            print("Singular command is too long")
                            fileLenListNum += 1

                # To be honest idk why this part works but it works so what the hell
                if len(fileLenCalc + lenCalcMid + combinerList[fileLenListNum + 1][1] + lenCalcMid + combinerList[fileLenListNum + 1][1] + lenCalcEnd) >= lenNum:
                    writeCMBFile.write(fileLenEdit + lenMid + combinerList[fileLenListNum][0] + lenEnd + '\n\n')

                    # print(len(fileLenCalc + lenCalcMid + combinerList[fileLenListNum][1] + lenCalcEnd))
                    fileLenListNum += 1
                    fileLenEdit = lenBeg + combinerList[fileLenListNum][0]
                    fileLenCalc = lenCalcBeg + combinerList[fileLenListNum][1]
                    break

                else:
                    # supposed to be the future
                    # print(len(fileLenCalc + lenCalcMid + combinerList[fileLenListNum - 1][1] + lenCalcMid + combinerList[fileLenListNum][1] + lenCalcEnd))
                    # foobar = fileLenCalc + lenCalcMid + combinerList[fileLenListNum + 1][1]
                    # print(len(foobar + lenCalcMid + combinerList[fileLenListNum + 1][1] + lenCalcEnd))
                    # print(len(fileLenCalc + lenCalcMid + combinerList[fileLenListNum + 1][1] + lenCalcMid + combinerList[fileLenListNum + 1][1] + lenCalcEnd))


                    # print(combinerList[fileLenListNum][1])
                    # print(combinerList[fileLenListNum + 1][1])

                    fileLenListNum += 1
                    fileLenEdit += lenMid + combinerList[fileLenListNum][0]
                    fileLenCalc += lenCalcMid + combinerList[fileLenListNum][1]

                    # print(combinerList[fileLenListNum - 1][1])
                    # print(combinerList[fileLenListNum][1])

                    # is the actual future
                    # print(len(fileLenCalc + lenCalcMid + combinerList[fileLenListNum][1] + lenCalcEnd))

            if breakLoop:
                print("File successfully parsed: {}\n".format(self.pathCBPBase))
                readCMDFile.close()
                writeCMBFile.close()
                break

    def CBPTempFile(self, dirTMP, tpFlag):
        '''Ran if a Multi compiler file is detected using a PCBPM_ prefix'''
        # CMBList = []
        # MULList = []
        CMBList = open(self.directoryCMB, 'r').read().split('\n')
        MULList = open(dirTMP, 'r').read().split('\n')
        opendirTMP = open(dirTMP, 'w')
        MULList.append(self.pathCBPBase)

        if tpFlag:
            tpCommand = '/' + self.serverText + 'tp @p ' + self.tpFlagCalc
            MULList.append('')
            MULList.append(tpCommand)
        MULList.append('')

        for s in CMBList:
            MULList.append(s)

        # print(MULList)

        for s in MULList:
            opendirTMP.write(s + '\n')

