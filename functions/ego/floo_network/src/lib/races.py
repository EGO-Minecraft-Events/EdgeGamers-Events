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
        self.initials = self.event.text.simple
        self.disp_name = self.event.full_name

        if obj_disp is None:
            self.obj_disp = self.disp_name
        else:
            self.obj_disp = obj_disp

        # Gets the first color of the event color tuple
        self.color = event.colors[0]


class LapRace(Race):
    """
    Container class to get lap race properties
    Attributes:
        lap (str): selector region when completing a lap
        lap_reset (str): selector region when resetting the lap selection
        spawn (str): selector region for the spawn area
    """
    def __init__(self, event, lap, lap_reset, spawn, obj_disp=None, fill_air=None, fill_block=None, **options):
        """
        Args:
            event (floo_network.Event)
            lap (Coords region or str)
            lap_reset (Coords region or str)
            spawn (Coords region or str)
            fill_air (Coords region)
            fill_block (Coords region)
        """
        super().__init__(event, obj_disp, fill_air, fill_block, **options)

        if isinstance(lap, Coords):
            self.lap = lap.to_selector()
        else:
            self.lap = lap

        if isinstance(lap_reset, Coords):
            self.lap_reset = lap_reset.to_selector()
        else:
            self.lap_reset = lap_reset

        if isinstance(spawn, Coords):
            self.spawn = spawn.to_selector()
        else:
            self.spawn = spawn
