from lib.floo_network import FlooEvent
from lib.coords import Coords, RegionCoords
from lib.consts import Sounds
from lib.container import Container


class Race(FlooEvent):
    """
    Container class to get the race properties

    Attributes:
        fill_air (Coords region)
        fill_block (Coords region)
        initials (str)
        obj_disp (str): A possibly shortened version of display name to be put into objective display names
        color (str)
    """

    def __init__(self, event, obj_disp=None, fill_air=None, fill_block=None, **options):
        """
        Args:
            event (floo_network.Event)
            fill_air (Coords region)
            fill_block (Coords region)
        """
        super().__init__(event, **options)
        self.fill_air = fill_air
        self.fill_block = fill_block
        self.initials = self.event.begin.simple_initials

        if obj_disp is None:
            self.obj_disp = self.event.full_name
        else:
            self.obj_disp = obj_disp

        # Gets the first color of the event color tuple
        self.color = event.colors[0]


class Place(Container):
    """
    Attributes:
        select_coords (Coords)
        select (str)
        message (str)
        block_coords (Coords)
        block (str)
        additional_cmds (str)
    """

    default_messages = (
        "took first place!",
        "took second place!",
        "took third place!",
        "got runnerup!"
    )

    def __init__(self, select_coords, message, score, *additional_cmds):
        """
        Args:
            select_coords (Coords): The selection region for each player
            message (str): The message that will appear when a player finishes the race,
                formatted as (player) message
            score (int): The place score that will be shown on display
            *additional_cmds (tuple): Any additional commands that should be added
        """
        super().__init__()
        self.select_coords = select_coords
        self.select = select_coords.selector()
        self.message = message
        self.score = score
        self.additional_cmds = list(additional_cmds)
        self.fills = []

    def add_fill(self, coords, block):
        block_data = (coords, block)
        self.fills.append(block_data)

    def cmd_main(self, select_all):
        """
        Sets up the blocks and additional commands
        """
        # runs any additional commands if needed
        for cmd in self.additional_cmds:
            self.cmd_queue.put(cmd)

        for coords, block in self.fills:
            if isinstance(coords, RegionCoords):
                cmd = coords.fill(block)
            else:
                cmd = coords.setblock(block)
            self.cmd_queue.put(cmd)

        return self._cmd_output()

    def cmd_term(self):
        for coords, _ in self.fills:
            if isinstance(coords, RegionCoords):
                cmd = coords.fill("air")
            else:
                cmd = coords.setblock("air")
            self.cmd_queue.put(cmd)

        return self._cmd_output()

    def __str__(self):
        return "Place[{0}]".format(self.score)

    def __repr__(self):
        return "Place[score={0}, coords={1}, message='{2}', fills={3}".format(
            self.score, repr(self.select_coords), self.message, self.fills)


class Checkpoint:
    """
    Attributes:
        select_coords (Coords): Selection to set the checkpoint
        select (str)
        tp_coords (Coords): Teleport coordinates when they fall into water or lava
        tp (str)

    Args:
        select_coords (Coords)
        tp_coords (Coords)
    """
    def __init__(self, select_coords, tp_coords):
        self.select_coords = select_coords
        self.select = select_coords.selector()
        self.tp_coords = tp_coords
        self.tp = str(self.tp_coords)


class RegularRace(Race):
    """
    Attributes:
        places (list of Place objects): Holds the nth place information
    """

    def __init__(self, event, obj_disp=None, fill_air=None, fill_block=None, **options):
        """
        Args:
            event (floo_network.Event)
            fill_air (Coords region)
            fill_block (Coords region)
        """
        super().__init__(event, obj_disp, fill_air, fill_block, **options)
        self.places = []

    def add_place(self, select_coords, message=None, score=None, *additional_cmds):
        """
        See Place.__init__
        """
        if score is None:
            score = len(self.places) + 1

        if message is None:
            # The message defaults to the messages defined in Place.default_messages
            # gets the place number, which is an integer that is greater than or equal to one
            if score > len(Place.default_messages):
                message = Place.default_messages[-1]
            else:
                message = Place.default_messages[score - 1]

        place = Place(select_coords, message, score, *additional_cmds)
        self.places.append(place)

    def add_fill(self, coords, block):
        if not self.places:
            raise SyntaxError("Cannot add fill '{0} {1}' without a given place".format(coords, block))
        self.places[-1].add_fill(coords, block)


class CheckpointRace(RegularRace):
    def __init__(self, event, obj_disp=None, fill_air=None, fill_block=None, **options):
        super().__init__(event, obj_disp, fill_air, fill_block, **options)
        self.checkpoints = []

    def set_spawn(self, select_coords, tp_coords):
        """
        Sets the race spawn.

        The spawn is internally stored as the first checkpoint of the list
        """

        # inserts at the beginning of the list if it is the spawn
        if self.checkpoints:
            checkpoint = Checkpoint(select_coords, tp_coords)
            self.checkpoints.insert(0, checkpoint)
        else:
            self.add_checkpoint(select_coords, tp_coords)

    def add_checkpoint(self, select_coords, tp_coords):
        checkpoint = Checkpoint(select_coords, tp_coords)
        self.checkpoints.append(checkpoint)


class LapRace(Race):
    """
    Container class to get lap race properties
    Attributes:
        lap (str): selector region when completing a lap
        lap_coords (Coords)
        lap_reset (str): selector region when resetting the lap selection
        lap_reset_coords (Coords)
        spawn (str): selector region for the spawn area
        spawn_coords (Coords)
    """

    def __init__(self, event, lap, lap_reset, spawn, obj_disp=None, fill_air=None, fill_block=None, **options):
        """
        Args:
            event (floo_network.Event)
            lap (Coords region)
            lap_reset (Coords region)
            spawn (Coords region)
            fill_air (Coords region)
            fill_block (Coords region)
        """
        super().__init__(event, obj_disp, fill_air, fill_block, **options)

        self.lap_coords = lap
        self.lap = lap.selector()

        self.lap_reset_coords = lap_reset
        self.lap_reset = lap_reset.selector()

        self.spawn_coords = spawn
        self.spawn = spawn.selector()
