from lib.floo_network import FlooEvent
from lib.coords import Coords


class Race(FlooEvent):
    """
    Container class to get the race properties

    Attributes:
        fill_air (Coords region)
        fill_block (Coords region)
        initials (str)
        disp_name (str)
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
        self.disp_name = self.event.full_name

        if obj_disp is None:
            self.obj_disp = self.disp_name
        else:
            self.obj_disp = obj_disp

        # Gets the first color of the event color tuple
        self.color = event.colors[0]


class Place:
    """
    Container to hold the #th place information
    """
    def __init__(self):
        pass

class RegularRace(Race):
    def __init__(self, event, obj_disp=None, fill_air=None, fill_block=None, **options):
        """
        Args:
            event (floo_network.Event)
            fill_air (Coords region)
            fill_block (Coords region)
        """
        super().__init__(event, obj_disp, fill_air, fill_block, **options)


class CheckpointRace(RegularRace):
    def __init__(self, event, obj_disp=None, fill_air=None, fill_block=None, **options):
        super().__init__(event, obj_disp, fill_air, fill_block, **options)


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
        self.lap = lap.to_selector()

        self.lap_reset_coords = lap_reset
        self.lap_reset = lap_reset.to_selector()

        self.spawn_coords = spawn
        self.spawn = spawn.to_selector()
