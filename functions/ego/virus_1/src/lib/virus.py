from lib.floo_network import FlooEvent


class Virus(FlooEvent):
    """
    Attributes:
        initials (str)
        obj_disp (str): A possibly shortened version of display name to be put into objective display names
        color (str)
    """

    def __init__(self, event, spawn_coords, virus_wait_coords, obj_disp=None, **options):
        """
        Automatically sets the pvp to true since that's how we roll
        """
        options["pvp"] = "true"
        super().__init__(event, **options)

        self.event = event
        self.initials = self.event.begin.simple_initials

        if obj_disp is None:
            self.obj_disp = self.event.full_name
        else:
            self.obj_disp = obj_disp

        # Gets the first color of the event color tuple
        self.color = event.colors[0]





