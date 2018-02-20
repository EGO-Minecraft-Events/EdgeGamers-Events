from lib.hash import djb2
from lib.container import Container
from lib.coords import Coords, TeleportCoords


class FlooEvent(Container):
    """
    Stores the general commands used by the Floo Network for every event.

    The cmd methods are required for all events to properly function.

    Attributes:
        event (floo_network.Event)
        id (int)
        options (dict)
        used_funcs (set): The functions that have been used by this object

    Args:
        event (Event):
        **options: (Arbitrary options)

    Example:
        FlooRace = FlooEvent(ICE_RACE)
        FlooPVP = FlooEvent(CAPTURE_THE_FLAG, pvp="false")
        FlooDeathPit = FlooEvent(DEATH_PIT, saturation="false")
    """

    # The set of required functions that must be ran for
    # literally any event to work
    required_funcs = {"cmd_init", "cmd_post_init", "cmd_main", "cmd_term"}

    valid_options = {
        "pvp": ("teams", "weak", "true"),  # FLpvp 0, 1, 2
        "saturation": ("true", "false"),  # FLsat 0, 1
        "gamemode": ("adventure", "survival", "spectator"),  # FLgmd 1, 2, 3
        "weather": ("clear", "rain", "storm"),  # FLwea 0, 1, 2
    }
    
    def __init__(self, event, **options):
        super().__init__()

        if not isinstance(event, Event):
            raise TypeError("The ID must be an Event type")

        self.event = event
        self.id = self.event.id
        self.options = {}

        for option, value in options.items():
            self.add_option(option, value)

    def add_option(self, option, option_value):
        if option not in FlooEvent.valid_options:
            raise SyntaxError("Invalid option name '{option}' for the floo network".format(option=option))

        if option_value not in FlooEvent.valid_options[option]:
            raise SyntaxError("Invalid option value for option '{option}' for the floo network: '{op_value}'".format(
                    option=option, op_value=option_value))

        self.options[option] = option_value

    def cmd_func(self, name):
        return self.event.cmd_func(name)

    def cmd_spawn(self, selector="@s"):
        return self.event.cmd_spawn(selector)

    def cmd_book(self, selector="@s"):
        return self.event.cmd_book(selector)

    def cmd_init(self):
        """
        Sets up the commands for the floo network
        """
        set_stand_str = "@e[type=armor_stand,FlooStand] {0} = {1}"

        # terminates any other games if they are running
        self.cmd_queue.put(FLOO_NETWORK.cmd_func("stop_events"))
        # self.cmd_queue.put("function ego:floo_network/stop_events")

        # setting up the teleport id
        self.cmd_queue.put(set_stand_str.format("FLtp", self.id))

        # setting up pvp options, defaults to false with weakness
        if "pvp" not in self.options or self.options["pvp"] == "weak":
            self.cmd_queue.put(set_stand_str.format("FLpvp", "1"))
        elif self.options["pvp"] == "teams":
            self.cmd_queue.put(set_stand_str.format("FLpvp", "0"))
        else:
            self.cmd_queue.put(set_stand_str.format("FLpvp", "2"))

        # setting up the saturation options, defaults to true
        if "pvp" not in self.options or self.options["pvp"] == "true":
            self.cmd_queue.put(set_stand_str.format("FLsat", "1"))
        else:
            self.cmd_queue.put(set_stand_str.format("FLsat", "0"))

        # setting up gamemode, defaults to adventure
        if "gamemode" not in self.options or self.options["gamemode"] == "adventure":
            self.cmd_queue.put(set_stand_str.format("FLsat", "1"))
        elif self.options["gamemode"] == "survival":
            self.cmd_queue.put(set_stand_str.format("FLsat", "2"))
        else:
            self.cmd_queue.put(set_stand_str.format("FLsat", "3"))

        # setting up weather, defaults to clear
        if "weather" not in self.options or self.options["weather"] == "clear":
            self.cmd_queue.put(set_stand_str.format("FLwea", "0"))
        elif self.options["weather"] == "rain":
            self.cmd_queue.put(set_stand_str.format("FLwea", "1"))
        else:
            self.cmd_queue.put(set_stand_str.format("FLwea", "2"))

        # global select all, specific for each event
        self.cmd_queue.put("@a gSA = 0")
        self.cmd_queue.put("@a[{0}] gSA = 1".format(self.event.select_all))

        return self._cmd_output()

    def cmd_post_init(self):
        self.cmd_queue.put(r'tellraw @a[EC=0] ' + self.event.begin(self.event.name_text() + r',{"text":" has started!","color":"green"}'))
        self.cmd_queue.put("@e[type=armor_stand,FlooStand,FLgam=0] FLgam = {}".format(self.id))
        return self._cmd_output()

    def cmd_main(self):
        """
        Used in the main loop to set everyone's floo network id value
        for spawning and teleportation
        """
        self.cmd_queue.put("@a[{}] FLid + 0".format(self.event.select_all))
        self.cmd_queue.put("@a[{0},FLid=..-{1}] FLid = {2}".format(self.event.select_all, self.id+1, self.id))
        self.cmd_queue.put("@a[{0},FLid=-{1}..] FLid = {2}".format(self.event.select_all, self.id-1, self.id))

        # global select all, specific for each event
        self.cmd_queue.put("@a gSA = 0")
        self.cmd_queue.put("@a[{0}] gSA = 1".format(self.event.select_all))

        return self._cmd_output()

    def cmd_term(self):
        """
        Resets all options for the floo network
        """
        set_stand_str = "@e[type=armor_stand,FlooStand] {0} = {1}"

        # Resets all options
        self.cmd_queue.put(set_stand_str.format("FLtp", "0"))
        self.cmd_queue.put(set_stand_str.format("FLpvp", "0"))
        self.cmd_queue.put(set_stand_str.format("FLsat", "1"))
        self.cmd_queue.put(set_stand_str.format("FLgmd", "1"))
        self.cmd_queue.put(set_stand_str.format("FLwea", "0"))

        # Sets the same game to 0
        self.cmd_queue.put("@e[type=armor_stand,FlooStand,FLgam={0}] FLgam = 0".format(self.id))
        self.cmd_queue.put(r'tellraw @a[EC=0] ' + self.event.begin(self.event.name_text() + r',{"text":" has stopped!","color":"red"}'))

        return self._cmd_output()

    def __str__(self):
        return "FlooEvent[{event}]".format(event=str(self.event))

    def __repr__(self):
        return "FlooEvent[event={event}, options={options}]".format(
                event=repr(self.event), options=self.options)


# DEF $TextStart$ {"text":"","extra":[{"text":"[","color":"gray"},{"text":"$TD$","color":"$Color$","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"$TDName$","color":"$Color$"}}},{"text":"]","color":"gray"},{"text":": "},
# DEF $TextStart$ {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}}},{"text":"]","color":"gray"},{"text":": "},
# DEF $TextStart$ {"text":"","extra":[{"text":"[","color":"gray","bold":true},{"text":"R","color":"blue","bold":true},{"text":"R","color":"dark_green","bold":true},{"text":"]:","color":"gray","bold":true},{"text":" "},

class Event:
    # "quickly give me a number that isn't 21"
    # google_hangouts = (9001 + 42 + 25 + 486415699541463632568965321357890965321454367421578
    #         + 2147483646 + math.pi + 0**0.5 + sum(map(ord, "This")) + math.inf + float("NaN") + 4)

    members = []

    class Text:
        def __init__(self, text, colors, disp_name, id, begin="", end=""):
            """
            Displays the name with the given options

            Args:
                text (str): String split with ";" to allow multiple colors
                colors (str): Colors split with ";"
                disp_name (str): The display name
                id (str or int): the event id
                begin (str): What the json string begins with
                end (str): What the json string ends with

            eg.
                Text("PC", "dark_aqua", "Pictionary")
                Text("PC", "dark_aqua", "A great event", "warp trap")

                [PC]: text
            """
            self.text = tuple(text.split(";"))
            self.simple = text.replace(";", "")
            self.colors = tuple(colors.split(";"))
            self.disp_name = disp_name
            self.hover_cmd = "/scoreboard players set @p FLtp {}".format(id)
            self.json = self.get_json(begin)
            self.end = end

        def get_json(self, begin):
            """
            Gets the mid section for the json string
            """
            mid_list = []
            for color, name_slice in zip(self.colors, self.text):
                if name_slice in "[]":
                    mid = r'{"text":"' + name_slice + r'","color":"gray"}'
                elif name_slice == ": ":
                    mid = r'{"text":"' + name_slice + r'"}'
                else:
                    mid = (r'{"text":"' + name_slice + r'","color":"' + color + r'","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"' +
                            self.disp_name + r'","color":"' + color + r'"}},"clickEvent":{"action":"run_command","value":"' + self.hover_cmd + r'"}}')
                mid_list.append(mid)
            mid = ",".join(mid_list)
            return begin + mid

        def __str__(self):
            return "Text['{}']".format("".join(self.text))

        def __repr__(self):
            return "Text['name={0}, colors={1}, disp_name={2}, hover_cmd={3}']".format(
                self.text, self.colors, repr(self.disp_name), repr(self.hover_cmd))
    
    class Initials(Text):
        def __init__(self, text, colors, disp_name, id):
            initials = "[;{};];: ".format(text)
            colors = "light_gray;{};light_gray;white".format(colors)
            begin = '{"text":"","extra":['
            end = "]}"

            super().__init__(initials, colors, disp_name, id, begin, end)
            self.simple_initials = text.replace(";", "")

        def __call__(self, text=None):
            if text is None:
                return self.json + ","
            return self.json + "," + text + self.end


    class Name(Text):
        def __init__(self, text, colors, disp_name, id):
            super().__init__(text, colors, disp_name, id)

        def __call__(self, text=None):
            if text is None:
                return self.json
            return self.json + "," + text + self.end


    def __init__(self, folder_name, name, colors, coords, shortcut, initials=None, select_coords=None, is_event=True):
        """
        Args:
            name (str): Name that can be split up with ";" for different colors ("Royal; ;Rumble")
            color (str): Color given for the event name, can be set as a list of colors using ";" ("green;white;blue")
            coords (Coords): Teleport coordinates for the event
            shortcut (str): A lowercase shortcut given for the name, which can be split using ";" ("rr;royal;rumble")
            initials (str or tuple of (str, str)): The initials provided for beginning text. If not provided,
                it will use the last shortcut provided. If a tuple is provided, it is expected to be
                (name, colors), each of which could be separated with ";" ("R;R", "dark_green;blue").
                If the initials is a str, the expected color of the initials is the first color provided unless
                the initials contains ";". If so, it will be all colors provided in the color.
            select_coords (Coords): Coords to select the entire region of the event
            is_event (bool): Whether the event is actually an event or not (since it can just be a location)
        """

        # Uses a unique ID value from the simple djb2 hash which hopefully ports to python nicely
        self.id = djb2(name)

        self.folder_name = folder_name
        self.name = tuple(name.split(";"))
        self.full_name = name.replace(";", "")
        self.colors = tuple(colors.split(";"))
        self.coords = coords
        self.shortcut = tuple(shortcut.split(";"))
        if isinstance(self.coords, TeleportCoords):
            self.disp_coords = " ".join(map(str, map(int, self.coords.pos.vec)))
        else:
            self.disp_coords = " ".join(map(str, map(int, self.coords.vec)))

        self.is_event = is_event

        if select_coords is None:
            self.select_coords = self.select_all = None
        else:
            self.select_coords = select_coords
            self.select_all = select_coords.selector()
        # self.disp_coords = round(self.coords.pos).simple_str()

        if initials is None:
            initials_text = self.shortcut[-1].upper()
            initials_color = self.colors[0]
        elif isinstance(initials, tuple):
            initials_text = initials[0]
            initials_color = initials[1]
        else:
            # expects the initials to be a string
            # note that the Event class should't ever be used, so in the same way, this Text class should't be used
            assert isinstance(initials, str)

            initials_text = initials
            if ";" in initials:
                initials_color = colors
            else:
                initials_color = self.colors[0]

        self.begin = Event.Initials(initials_text, initials_color, self.full_name, self.id)
        self.name_text = Event.Name(name, colors, self.full_name, self.id)

        # checks whether the length of the color after splitting
        # is the length of the name after splitting
        if len(self.name) != len(self.colors):
            raise SyntaxError("Event {name} does not have the same number of color and name arguments".format(name=self.full_name))

        # Adds each event to the members list
        Event.members.append(self)

    def cmd_func(self, name):
        """
        Returns the file path to the provided name
        """
        return "function ego:{0}/{1}".format(self.folder_name, name)

    def cmd_spawn(self, selector="@s"):
        """
        Returns the given teleport command to teleport
        them back to the event spawn
        """
        return "scoreboard players set {0} FLtp {1}".format(selector, self.id)

    def cmd_book(self, selector="@s"):
        """
        Returns the given book command to give a player
        the event book
        """
        return "scoreboard players set {0} FLbk {1}".format(selector, self.id)

    def __str__(self):
        return "Event[{name} ({short})]".format(name=repr(self.full_name), short=str(self.shortcut)[1:-1])

    def __repr__(self):
        return "Event[id={id}, name={name}, colors={colors}, coords={coords}, disp_coords={disp_coords}, shortcut={short}], initials={init}".format(
            id=self.id, name=self.name, colors=self.colors, coords=self.coords,
            disp_coords=self.disp_coords, short=str(self.shortcut)[1:-1], init=repr(self.begin))


# Races
ICE_RACE = Event("ice_race", "Ice race", "aqua", Coords("49 36 -45 -90 0"), "ir", select_coords=Coords("34 2 -64 175 71 -21"))
SLOW_RACE = Event("slow_race", "Slow Race", "gray", Coords("75 7 -80 90 0"), "sr", select_coords=Coords("21 4 -88 82 104 -67"))
NETHER_RACE = Event("nether_race", "Nether Race", "red", Coords("73 7 -102 90 0"), "nr", select_coords=Coords("32 4 -108 80 104 -93"))
EVIL_RACE = Event("evil_race", "Evil Race", "gray", Coords("23 7 -133 -90 0"), "evilr", initials="EvilR", select_coords=Coords("19 6 -147 107 106 -120"))
DIAMOND_RACE = Event("diamond_race", "Diamond Race", "aqua", Coords("218 18 -37 -90 0"), "dr", select_coords=Coords("206 4 -57 255 104 -18"))
EMERALD_RACE = Event("emerald_race", "Emerald Race", "green", Coords("276 17 -96 90 0"), "er", select_coords=Coords("219 5 -121 294 105 -70"))
QUARTZ_RACE = Event("quartz_race", "Quartz Race", "white", Coords("229 8 -157 -90 0"), "qr", select_coords=Coords("219 4 -177 296 104 -139"))
V1_8_RACE = Event("1_8_race", "1.8 Race", "gold", Coords("242 26 -222 -90 0"), "18r", select_coords=Coords("212 7 -241 341 107 -191"))
EPIC_RACE = Event("epic_race", "Epic Race", "gold", Coords("424 12 -122 -90 0"), "epicr", initials="EpicR", select_coords=Coords("416 4 -135 476 33 -70"))
SALT_RACE = Event("salt_race", "Salt Race", "gray", Coords("467 8 -33 -90 0"), "saltr", initials="SaltR", select_coords=Coords("419 4 -47 498 44 -15"))
DEATH_RUN = Event("death_run", "Death Run", "red", Coords("31 20 -240 -45 0"), "deathr", initials="DeathR", select_coords=Coords("13 12 -260 148 62 -205"))
DIRT_RACE = Event("dirt_race", "Dirt Race", "gray", Coords("23 15 -189.0 -90 0"), "dirtr", initials="DirtR", select_coords=Coords("18 11 -207 67 31 -162"))
MYCELIUM_RACE = Event("mycelium_race", "Mycelium Race", "dark_purple", Coords("445 68 -669.0 -90 0"), "mr", select_coords=Coords("433 5 -739 473 85 -639"))
FROSTBURN_RUN = Event("frostburn_run", "Frostburn Run", "aqua", Coords("517 11 -827 90 0"), "fbr", select_coords=Coords("433 3 -841 523 53 -751"))
EVERCHANGING_RACE = Event("ever_changing_race", "EverChanging Race", "yellow", Coords("460 3 -331 -90 0"), "ecr", select_coords=Coords("450 0 -353 574 30 -308"))

# Minigames
VIRUS_1 = Event("virus_1", "Virus 1", "yellow", Coords("-85 45 -241 -45 0"), "virus1;vr1", select_coords=Coords("-130 4 -315 -9 64 -134"))
VIRUS_2 = Event("virus_2", "Virus 2", "yellow", Coords("-77 56 -85 -45 0"), "virus2;vr2", select_coords=Coords("-107 2 -130 86 102 111"))
PVP_OLD_CTF = Event("pvp", "PVP: Old CTF", "red", Coords("-268 49 -39 -90 0"), "pvp1;oldctf")
CAPTURE_THE_FLAG = Event("capture_the_flag", "Capture; the ;flag", "red;white;blue", Coords("558 107 159.0 90 0"), "ctf",
    initials="c;t;f", select_coords=Coords("548 106 148 568 111 169"))
THE_PIT_3 = Event("the_pit_3", "The Pit 3", "green", Coords("-105 25 200 -135 0"), "tp;tpl3", select_coords=Coords("-122 4 133 -43 54 224"))
SAND_TOMB = Event("sand_tomb", "Sand Tomb", "yellow", Coords("-250 25 18 -90 0"), "st", select_coords=Coords("-279 4 5 -196 54 49"))
ANVIL_DROP = Event("anvil_drop", "Anvil Drop", "green", Coords("-16 5 87 90 0"), "ad", select_coords=Coords("-38 0 76 -16 35 98"))
DEATH_PIT = Event("death_pit", "Death Pit", "red", Coords("-187 24 96 -90 0"), "dp")
RABBIT_BALL = Event("rabbit_ball", "Rabbit; ;Ball", "red;white;blue", Coords("214 27 334 -90 0"), "rb", select_coords=Coords("206 73 262 320 56 415"))
MASTERMIND = Event("mastermind", "Mastermind", "gold", Coords("77 5 41 0 -15"), "mm", select_coords=Coords("45 3 22 109 33 87"))
PICTIONARY = Event("pictionary", "P;i;c;t;i;o;n;a;r;y", "light_purple;red;gold;yellow;green;dark_green;blue;dark_aqua;aqua;white",
    Coords("161 4 180 90 0"), "pc", initials=("PC", "dark_aqua"), select_coords=Coords("110 3 148 174 18 212"))
ROYAL_RUMBLE = Event("royal_rumble", "Royal; ;Rumble", "blue;white;dark_green",
    Coords("-103 19 482 -180 0"), "rr", initials=("R;R", "blue;dark_green"), select_coords=Coords("-153 0 299 5 110 494"))

# Other
SPAWN = Event("floo_network", "Spawn", "dark_red", Coords("397 17 61 90 0"), "spawn", initials="Spawn", is_event=False)
FLOO_NETWORK = Event("floo_network", "Floo Network", "green", Coords("348 4 114 -90 0"), "cmd;floo;diagonally",
    initials="Floo", select_coords=Coords("350 14 13 440 44 103"), is_event=False)
TEAMFLEAK_TOKEN = Event("ts_token", "Teamspeak Token", "dark_aqua", Coords("549 20 42"), "ts;tstoken", initials="TsToken", is_event=False)
MINIGAME_HUB = Event("floo_network", "The Minigame Hub", "green", Coords("329 24.065 171 90 0"), "mghub", initials="MGhub", is_event=False)
PVP_HUB = Event("floo_network", "The PVP hub", "light_purple", Coords("385 15 159 180 0"), "pvphub", initials="PVPhub", is_event=False)
MASTERMIND_HUB = Event("floo_network", "The Mastermind Hub", "gold", Coords("329 24.065 154 90 0"), "mmhub", initials="MMhub", is_event=False)
RACE_HUB = Event("floo_network", "The Race Hub", "dark_aqua", Coords("329 24.076 137 90 0"), "racehub", initials="RaceHub", is_event=False)
# BLOCK_HUNT_HUB = Event("floo_network", "The BlockHunt Hub", "dark_red", Coords(""), "bhhub", initials="BHhub", is_event=False)

