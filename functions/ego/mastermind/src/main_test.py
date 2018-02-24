from lib.floo_network import MASTERMIND, FlooEvent
from lib.const_ints import CONST_INTS
from lib.scoreboard import OBJECTIVES, TEAMS
from lib.coords import Coords
from lib.consts import *


event = MASTERMIND
floo_event = FlooEvent(MASTERMIND)
initials = "MM"
select_all = event.select_all

room_size = Coords(7, 5, 12)


north_room = Coords("46 4 24")
south_room = Coords("46 4 47")

# difference between each room
room_difference = 11

# total number of rooms
total_rooms = 12

# the selection for each room

class Room:
    def __init__(self, number, select_coords):
        self.number = number
        self.select_coords = select_coords
        self.corner = select_coords.pos
        self.select = select_coords.selector()

    def __str__(self):
        return "Room({0}: corner='{1}', selection='{2}')".format(self.number, self.corner, self.selection)

rooms = {}

for num in range(1, (total_rooms // 2) + 1):
    position = (north_room.vec + Coords((num - 1) * room_difference, 0, 0).vec)
    selection = Coords(*position, *(position + room_size.vec))
    room = Room(num, selection)
    rooms[num] = room

for num in range((total_rooms // 2) + 1, total_rooms + 1):
    position = south_room.vec + Coords(((num - 1) - total_rooms // 2) * room_difference, 0, 0).vec
    selection = Coords(*position, *(position + room_size.vec))
    room = Room(num, selection)
    rooms[num] = room

for room in map(str, rooms.values()):
    print(room)


# filling the doors
fill_doors_north = Coords("49 8 37 105 6 37")
fill_doors_south = Coords("49 8 46 105 6 46")

fill_buttons_north = Coords("46 6 26 101 6 34")
fill_buttons_south = Coords("53 6 57 108 6 49")

activate_struct_reset = Coords("45 2 60 109 2 23")
