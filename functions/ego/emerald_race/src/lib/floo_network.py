from lib.hash import djb2
from lib.container import Container
from lib.coords import Coords


class FlooEvent(Container):
    """
    Stores the general commands used by the Floo Network for every event.

    The cmd methods are required for all events to properly function.

    Attributes:
        event (floo_network.Event)
        id (int)
        options (dict)
    """

    valid_options = {
        "pvp": ("true", "false"),  # FLpvp 0, 1
        "saturation": ("true", "false"),  # FLsat 0, 1
        "gamemode": ("adventure", "survival", "spectator"),  # FLgam 1, 2, 3
        "weather": ("clear", "rain", "storm"),  # FLwea 0, 1, 2
    }
    
    def __init__(self, event, **options):
        """
        Args:
            event (Event):
            **options: (Arbitrary options)

        Example:
            FlooRace = FlooEvent(ICE_RACE)
            FlooPVP = FlooEvent(CAPTURE_THE_FLAG, pvp="false")
            FlooDeathPit = FlooEvent(DEATH_PIT, saturation="false")
        """
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

    def cmd_init(self):
        """
        Sets up the commands for the floo network
        """
        set_stand_str = "@e[type=armor_stand,FlooStand] {0} = {1}"

        # terminates any other games if they are running
        self.cmd_queue.put("function ego:floo_network/src/stop_events")

        # setting up the teleport id
        self.cmd_queue.put(set_stand_str.format("FLtp", self.id))

        # setting up pvp options, defaults to false
        if "pvp" not in self.options or self.options["pvp"] == "false":
            self.cmd_queue.put(set_stand_str.format("FLpvp", "0"))
        else:
            self.cmd_queue.put(set_stand_str.format("FLpvp", "1"))

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

        return self._cmd_output()

    def cmd_post_init(self):
        return "@e[type=armor_stand,FlooStand,SPgam=0] SPgam = {}".format(self.id)

    def cmd_main(self, SA):
        """
        Used in the main loop to set everyone's floo network id value
        for spawning and teleportation
        """
        self.cmd_queue.put("@a[{SA}] FLid + 0").format(SA)
        self.cmd_queue.put("@a[{SA},FLid=..-{id_calc}] FLid = {id}".format(SA, self.id+1, self.id))
        self.cmd_queue.put("@a[{SA}] FLid=-{id_calc}.. FLid = {id}".format(SA, self.id-1, self.id))

        return self._cmd_output()

    def cmd_term(self):
        """
        Resets all options for the floo network
        """
        set_stand_str = "@e[type=_armor_stand,FlooStand] {0} = {1}"

        # Resets all options
        self.cmd_queue.put(set_stand_str.format("FLtp", "0"))
        self.cmd_queue.put(set_stand_str.format("FLpvp", "0"))
        self.cmd_queue.put(set_stand_str.format("FLsat", "1"))
        self.cmd_queue.put(set_stand_str.format("FLgam", "1"))
        self.cmd_queue.put(set_stand_str.format("FLwea", "0"))

        # Sets the same game to 0
        self.cmd_queue.put("@e[type=armor_stand,FlooStand,FLgam={0}] FLgam = 0".format(self.id))

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
        def __init__(self, text, colors, disp_name, id, are_initials=False):
            """
            Displays the name with the given options

            Args:
                initials (str): 
                colors (str): 
                hover (str): 
                hover_cmd (str or int): either the command to run when hovering or the event id

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
            self.are_initials = are_initials

        @classmethod
        def from_initials(cls, text, colors, disp_name, id):
            initials = "[;{};];: ".format(text)
            colors = "light_gray;{};light_gray;white".format(colors)
            return cls(initials, colors, disp_name, id, True)

        def __call__(self, text=None):
            """
            This either gets the beginning of the text, or surrounds the given text with proper text
            """
            if self.are_initials:
                begin = '{"text":"","extra":['
                end = "]}"
            else:
                begin = ""
                end = ""

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
            if text is None:
                if self.are_initials:
                    return begin + mid + ","
                return begin + mid
            return begin + mid + "," + text + end

        def __str__(self):
            return "Text['{}']".format("".join(self.text))

        def __repr__(self):
            return "Text['name={0}, colors={1}, disp_name={2}, hover_cmd={3}']".format(
                self.text, self.colors, repr(self.disp_name), repr(self.hover_cmd))


    def __init__(self, folder_name, name, colors, coords, shortcut, initials=None):
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
        """

        # Uses a unique ID value from the simple djb2 hash which hopefully ports to python nicely
        self.id = djb2(name)

        self.folder_name = folder_name
        self.name = tuple(name.split(";"))
        self.full_name = name.replace(";", "")
        self.colors = tuple(colors.split(";"))
        self.coords = coords
        self.shortcut = tuple(shortcut.split(";"))
        self.disp_coords = " ".join(map(str, map(int, self.coords.pos)))
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

        self.begin = Event.Text.from_initials(initials_text, initials_color, self.full_name, self.id)
        self.name_text = Event.Text(name, colors, self.full_name, self.id)

        # checks whether the length of the color after splitting
        # is the length of the name after splitting
        if len(self.name) != len(self.colors):
            raise SyntaxError("Event {name} does not have the same number of color and name arguments".format(name=self.full_name))

        # Adds each event to the members list
        Event.members.append(self)

    def __str__(self):
        return "Event[{name} ({short})]".format(name=repr(self.full_name), short=str(self.shortcut)[1:-1])

    def __repr__(self):
        return "Event[id={id}, name={name}, colors={colors}, coords={coords}, disp_coords={disp_coords}, shortcut={short}], initials={init}".format(
            id=self.id, name=self.name, colors=self.colors, coords=self.coords,
            disp_coords=self.disp_coords, short=str(self.shortcut)[1:-1], init=repr(self.begin))


# Races
ICE_RACE = Event("ice_race", "Ice race", "aqua", Coords("49 36 -45 -90 0"), "ir")
SLOW_RACE = Event("slow_race", "Slow Race", "gray", Coords("75 7 -80 90 0"), "sr")
NETHER_RACE = Event("nether_race", "Nether Race", "red", Coords("73 7 -102 90 0"), "nr")
EVIL_RACE = Event("evil_race", "Evil Race", "gray", Coords("23 7 -133 -90 0"), "evilr", initials="EvilR")
DIAMOND_RACE = Event("diamond_race", "Diamond Race", "aqua", Coords("218 18 -37 -90 0"), "dr")
EMERALD_RACE = Event("emerald_race", "Emerald Race", "green", Coords("276 17 -96 90 0"), "er")
QUARTZ_RACE = Event("quartz_race", "Quartz Race", "white", Coords("229 8 -157 -90 0"), "qr")
V1_8_RACE = Event("1_8_race", "1.8 Race", "gold", Coords("242 26 -222 -90 0"), "18r")
EPIC_RACE = Event("epic_race", "Epic Race", "gold", Coords("424 12 -122 -90 0"), "epicr", initials="EpicR")
SALT_RACE = Event("salt_race", "Salt Race", "gray", Coords("467 8 -33 -90 0"), "saltr", initials="SaltR")
DEATH_RUN = Event("death_run", "Death Run", "red", Coords("31 20 -240 -45 0"), "deathr", initials="DeathR")
DIRT_RACE = Event("dirt_race", "Dirt Race", "gray", Coords("23 15 -189.0 -90 0"), "dirtr", initials="DirtR")
MYCELIUM_RACE = Event("mycelium_race", "Mycelium Race", "dark_purple", Coords("445 68 -669.0 -90 0"), "mr")
FROSTBURN_RUN = Event("frostburn_run", "Frostburn Run", "aqua", Coords("517 11 -827 90 0"), "fbr")
EVERCHANGING_RACE = Event("ever_changing_race", "EverChanging Race", "yellow", Coords("460 3 -331 -90 0"), "ecr")

# Minigames
VIRUS_1 = Event("virus_1", "Virus 1", "yellow", Coords("-85 45 -241 -45 0"), "v1;virus1")
VIRUS_2 = Event("virus_2", "Virus 2", "yellow", Coords("-77 56 -85 -45 0"), "v2;virus2")
PVP_OLD_CTF = Event("pvp", "PVP: Old CTF", "red", Coords("-268 49 -39 -90 0"), "pvp1;oldctf")
CAPTURE_THE_FLAG = Event("capture_the_flag", "Capture; the ;flag", "red;white;blue", Coords("558 107 159.0 90 0"), "ctf", initials="c;t;f")
THE_PIT_3 = Event("the_pit_3", "The Pit 3", "green", Coords("-105 25 200 -135 0"), "tp;tpl3")
SAND_TOMB = Event("sand_tomb", "Sand Tomb", "yellow", Coords("-250 25 18 -90 0"), "st")
ANVIL_DROP = Event("anvil_drop", "Anvil Drop", "green", Coords("-16 5 87 90 0"), "ad")
DEATH_PIT = Event("death_pit", "Death Pit", "red", Coords("-187 24 96 -90 0"), "dp")
RABBIT_BALL = Event("rabbit_ball", "Rabbit; ;Ball", "red;white;blue", Coords("214 27 334 -90 0"), "rb")
MASTERMIND = Event("mastermind", "Mastermind", "gold", Coords("77 5 41 0 -15"), "mm")
PICTIONARY = Event("pictionary", "P;i;c;t;i;o;n;a;r;y", "light_purple;red;gold;yellow;green;dark_green;blue;dark_aqua;aqua;white",
    Coords("161 4 180 90 0"), "pc", initials=("PC", "dark_aqua"))
ROYAL_RUMBLE = Event("royal_rumble", "Royal; ;Rumble", "blue;white;dark_green", Coords("-103 19 482 -180 0"), "rr", initials=("R;R", "blue;dark_green"))
RABBIT_BALL = Event("rabbit_ball", "Rabbit; ;Ball", "red;white;blue", Coords("224 24 334 -90 0"), "rb")

# Other
SPAWN = Event("floo_network", "Spawn", "dark_red", Coords("397 17 61 90 0"), "spawn", initials="Spawn")
FLOO_NETWORK = Event("floo_network", "Floo Network", "green", Coords("348 4 114 -90 0"), "cmd;floo;diagonally", initials="Floo")
TEAMFLEAK_TOKEN = Event("ts_token", "Teamspeak Token", "dark_aqua", Coords("549 20 42"), "ts;tstoken", initials="TsToken")
MINIGAME_HUB = Event("floo_network", "The Minigame Hub", "green", Coords("329 24.065 171 90 0"), "mghub", initials="MGhub")
PVP_HUB = Event("floo_network", "The PVP hub", "light_purple", Coords("385 15 159 180 0"), "pvphub", initials="PVPhub")
MASTERMIND_HUB = Event("floo_network", "The Mastermind Hub", "gold", Coords("329 24.065 154 90 0"), "mmhub", initials="MMhub")
RACE_HUB = Event("floo_network", "The Race Hub", "dark_aqua", Coords("329 24.076 137 90 0"), "racehub", initials="RaceHub")
