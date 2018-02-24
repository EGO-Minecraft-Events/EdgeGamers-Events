from lib.floo_network import MASTERMIND, FlooEvent
from lib.const_ints import CONST_INTS
from lib.scoreboard import OBJECTIVES, TEAMS
from lib.coords import Coords
from lib.vector import Vector3
from lib.consts import *


event = MASTERMIND
floo_event = FlooEvent(MASTERMIND)
initials = "MM"
select_all = event.select_all

room_size_north = Vector3(7, 5, 12)
room_size_south = Vector3(-7, 5, -12)


north_room = Coords("53 4 36")
south_room = Coords("46 4 47")

# difference between each room
room_difference = 11

# total number of rooms
total_rooms = 12

# block type that we are supposed to place our guess on
place_on = "minecraft:glass"


# each individual block that is avaliable
blocks = ["wool 14", "wool 5", "wool 9", "wool 2", "wool 6", "wool 1"]

# total number of possible choices
blocks_total = len(blocks)

# number of guesses
guess_num = 5

# number of blocks per guesses
blocks_per_guess = 4


class Room:
    def __init__(self, number, select_coords):
        self.number = number
        self.select_coords = select_coords
        self.corner = select_coords.pos
        self.select = select_coords.selector()

    def __str__(self):
        return "Room({0}: corner='{1}', selection='{2}')".format(self.number, self.corner, self.select)

rooms = {}

for num in range(1, (total_rooms // 2) + 1):
    position = (north_room.vec + Coords((num - 1) * room_difference, 0, 0).vec)
    selection = Coords(*position, *(position + room_size_south))
    room = Room(num, selection)
    rooms[num] = room

for num in range((total_rooms // 2) + 1, total_rooms + 1):
    position = south_room.vec + Coords(((num - 1) - total_rooms // 2) * room_difference, 0, 0).vec
    selection = Coords(*position, *(position + room_size_north))
    room = Room(num, selection)
    rooms[num] = room

for room in map(str, rooms.values()):
    print(room)
