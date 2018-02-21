from lib.floo_network import FlooEvent


class Virus(FlooEvent):
    """
    Args:
        event (Event)
        select_spawn (Coords)
        wait_coords (Coords)
        arena_coords (Coords)
        select_virus (Coords)
        
    Attributes:
        initials (str)
        obj_disp (str): A possibly shortened version of display name to be put into objective display names
        select_spawn_coords (Coords): Region coordinates to select the spawn 
        select_spawn (str): Selector arguments to select the spawn
        wait_coords (Coords): Teleport coordinates to teleport the virus to the waiting room 
        arena_coords (Coords): The coords of the arena tp once the doors are locked
            This is used to put the virus in the arena after the countdown has started
        select_virus_coords (Coords): Region coordinates to select any virus in the waiting room
        select_virus (str): Selector arguments to select the waiting room
    """

    def __init__(self, event, select_spawn, wait_coords, arena_coords, select_virus, obj_disp=None, **options):

        # Automatically sets the pvp to true since that's how we roll
        options["pvp"] = "true"
        super().__init__(event, **options)

        self.initials = self.event.begin.simple_initials

        if obj_disp is None:
            self.obj_disp = self.event.full_name
        else:
            self.obj_disp = obj_disp

        self.select_spawn_coords = select_spawn
        self.select_spawn = select_spawn.selector()

        self.wait_coords = wait_coords
        self.arena_coords = arena_coords

        self.select_virus_coords = select_virus
        self.select_virus = select_virus.selector()
