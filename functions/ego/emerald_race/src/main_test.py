from lib import const_ints
from lib import scoreboard
from lib import coords

asdf = const_ints.ConstInts()

asdf.add_constants(25, 35, 1, 20)
asdf.add_constants(64, 23, 6, 1)

print(scoreboard.OBJECTIVES.cmd_init())
print(asdf.cmd_init())
print(repr(asdf.cmd_term()))

coordRegion = coords.Coords("-32 33 320 -52 28 320")
print(str(coordRegion))
print(coordRegion.to_selector())
