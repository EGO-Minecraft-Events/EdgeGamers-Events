from lib.consts import *
from lib.coords import *


class Event:
    id = 1

    def __init__(self, name, color, coords, shortcut, display_coords=None):
        """
        Args:
            name (str): Name that can be split up with ";" for different colors ("Royal; ;Rumble")
            color (str): Color given for the event name, can be set as a list of colors using ";" ("green;white;blue")
            coords(general.Coords): Teleport coordinates for the event
        """

        # Creates a unique ID value for each event class
        self.id = Event.id
        Event.id += 1

        self.name = name.split(";")
        self.full_name = name.replace(";", "")
        self.colors = color.split(";")
        self.coords = coords
        self.shortcut = shortcut

        # gets the default value for the display_coords
        if display_coords is None:
            self.display_coords = self.coords["xyz"]
        else:
            self.display_coords = display_coords

        # checks whether the length of the color after splitting
        # is the length of the name after splitting
        if len(self.name) != len(self.colors):
            raise SyntaxError("Event {name} does not have the same number of color and name arguments".format(self.full_name))


ICE_RACE = Event("Ice race", "aqua", Coords("49 36 -45 -90 0"), "ir")
SLOW_RACE = Event("Slow Race", "gray", Coords("75 7 -80 90 0"), "sr")
NETHER_RACE = Event("Nether Race", "red", Coords("73 7 -102 90 0"), "nr")
EVIL_RACE = Event("Evil Race", "gray", Coords("23 7 -133 -90 0"), "evilr")
DIAMOND_RACE = Event("Diamond Race", "aqua", Coords("218 18 -37 -90 0"), "dr")
EMERALD_RACE = Event("Emerald Race", "green", Coords("276 17 -96 90 0"), "er")
QUARTZ_RACE = Event("Quartz Race", "white", Coords("229 8 -157 -90 0"), "qr")
V1_8_RACE = Event("1.8 Race", "gold", Coords("242 26 -222 -90 0"), "18r")
EPIC_RACE = Event("Epic Race", "gold", Coords("424 12 -122 -90 0"), "epicr")
SALT_RACE = Event("Salt Race", "gray", Coords("467 8 -33 -90 0"), "saltr")
DEATH_RUN = Event("Death Run", "red", Coords("31 20 -240 -45 0"), "deathr")
DIRT_RACE = Event("Dirt Race", "gray", Coords("23 15 -189.0 -90 0"), "dirtr")
MYCELIUM_RACE = Event("Mycelium Race", "dark_purple", Coords("445 68 -669.0 -90 0"), "mr")
FROSTBURN_RUN = Event("Frostburn Run", "aqua", Coords("517 11 -827 90 0"), "fbr")
EVERCHANGING_RACE = Event("EverChanging Race", "yellow", Coords("460 3 -331 -90 0"), "ecr")

MASTERMIND = Event("Mastermind", "gold", Coords("77 5 41 0 -15"), "mm")
THE_PIT_3 = Event("The Pit 3", "green", Coords("-105 25 200 -135 0"), "tpl3")
SAND_TOMB = Event("Sand Tomb", "yellow", Coords("-250 25 18 -90 0"), "st")
SPAWN = Event("Spawn", "dark_red", Coords("397 17 61 90 0"), "spawn")
VIRUS_2 = Event("Virus 2", "yellow", Coords("-77 56 -85 -45 0"), "virus2")
VIRUS_1 = Event("Virus 1", "yellow", Coords("-85 45 -241 -45 0"), "virus1")
TEAMSPEAK_TOKEN = Event("Teamspeak Token", "dark_aqua", Coords("549 20 42"), "tstoken")
ANVIL_DROP = Event("Anvil Drop", "green", Coords("-16 5 87 90 0"), "ad")
MINIGAME_HUB = Event("The Minigame Hub", "green", Coords("329 24.065 171 90 0"), "mghub")
PVP_HUB = Event("The PVP hub", "light_purple", Coords("385 15 159 180 0"), "pvphub")
MASTERMIND_HUB = Event("The Mastermind Hub", "gold", Coords("329 24.065 154 90 0"), "mmhub")
RACE_HUB = Event("The Race Hub", "dark_aqua", Coords("329 24.076 137 90 0"), "racehub")
SPAWNPOINT_SYSTEM = Event("Spawnpoint System", "yellow", Coords("348 4 114 -90 0"), "cmd")
PVP_OLD_CTF = Event("PVP: Old CTF", "red", Coords("-268 49 -39 -90 0"), "oldctf")
DEATH_PIT = Event("Death Pit", "red", Coords("-187 24 96 -90 0"), "dp")
RABBIT_BALL = Event("Rabbit; ;Ball", "red;white;blue", Coords("214 27 334 -90 0"), "rb")
CAPTURE_THE_FLAG = Event("Capture; the ;flag", "red;white;blue", Coords("558 107 159.0 90 0"), "ctf")
PICTIONARY = Event("P;i;c;t;i;o;n;a;r;y", "light_purple;red;gold;yellow;green;dark_green;blue;dark_aqua;aqua;white", Coords("161 4 180 90 0"), "pc")
ROYAL_RUMBLE = Event("Royal; ;Rumble", "blue;white;dark_green", Coords("-103 19 482 -180 0"), "rr")
RABBIT_BALL = Event("Rabbit; ;Ball", "red;white;blue", Coords("224 24 334 -90 0"), "rb")