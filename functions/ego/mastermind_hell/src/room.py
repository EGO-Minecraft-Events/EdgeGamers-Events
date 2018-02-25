class Room:
    def __init__(self, number, select_coords):
        self.number = number
        self.select_coords = select_coords
        self.corner = select_coords.pos
        self.select = select_coords.selector()

    def __str__(self):
        return "Room({0}: corner='{1}', selection='{2}')".format(self.number, self.corner, self.select)
