
class Arena:
    def __init__(self, id, name, fake_name, select, portal, win_select, win_pre_select, activate_struct):
        """
        Args:
            id (int)
            name (str): Display name
            fake_name (str): Display name used as a fake player
            select (Coords)
            portal (Portal)
            win_select (Coords)
            win_pre_select (Coords)
            activate_struct (Coords)

        Attributes:
            id (int)
            name (str)
            fake_name (str)
            region (Coords)
            select (str)
            portal (Portal)
            win_select (str)
            win_pre_select (str)
            activate_struct (Coords)
        """
        self.id = id
        self.name = name
        self.fake_name = fake_name
        self.region = select
        self.select = select.selector()
        self.portal = portal
        self.win_select = win_select.selector()
        self.win_pre_select = win_pre_select.selector()
        self.activate_struct = activate_struct

class Portal:
    def __init__(self, select, particle, fill_bar, tp_to):
        """
        Args:
            select (Coords)
            particle_pos (Coords): Position of where the particles will spawn
            fill_bar (Coords)
            tp_to (Coords)

        Attributes:
            region (Coords)
            select (str)
            particle_pos (Coords)
            fill_bar (Coords)
            tp_to (Coords)
        """

        self.region = select
        self.select = select.selector()
        self.particle = particle
        self.fill_bar = fill_bar
        self.tp_to = tp_to

