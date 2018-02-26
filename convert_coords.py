from lib.coords import Coords

# example
"""
select_spawn = x=-107,y=25,z=193,dx=9,dy=5,dz=9
select_arena = x=-107,y=6,z=146,dx=56,dy=50,dz=56
select_spectate = x=-111,y=16,z=204,dx=2,dy=4,dz=2
floor_region = x=-107,y=6,z=146,dx=56,dz=56
pillar_sides_region = x=-81,y=6,z=172,dx=4,dy=3,dz=4
on_pillar_region = x=-82,y=10,z=171,dz=6,dz=6
mid_ball_upper_region = x=-81,y=23,z=172,dx=4,dz=4
walls_east_region = x=-50,y=6,z=146,dy=32,dz=56
walls_north_region = x=-107,y=6,z=145,dx=56,dy=32
walls_south_region = x=-107,y=6,z=203,dx=56,dy=32

# teleport to the arena inside the middle ball
arena_tp = -79 18 174

# activates the structure for loading up the middle ball
activate_struct_mid = -80 7 174
# fill region to clear out the middle ball
mid_ball_region = -77 17 172 -81 22 176

# ending position for the clone of the floor to the calculation area
platform_clone_destination = -54 4 230

# region to select the degrading floor calculations
select_platform_calc = -54 4 230 -14 4 270

# region to activate the structure blocks for saving the finalized calculations
activate_struct_save = -35 5 249 -33 5 251

# region to select the entire platform
platform_region = -59 10 194 -99 10 154


# region to activate the structure blocks for loading
# the calculated degrading platform
activate_struct_load = -80 2 175 -78 2 173


fill_doors_south = 49 8 46 105 6 46

fill_buttons_north = 46 6 26 101 6 34
fill_buttons_south = 53 6 57 108 6 49

activate_struct_reset = 45 2 60 109 2 23

# fills the board
fill_board = 130 18 192 130 6 168

# teleport coords to the board so the player can draw
tp_to_draw = 133 4 180 90 0

# teleport back to the arena
tp_back = 152 8 180 90 -30

# redstone block to open the door with
activate_door = 158 1 180

"""
inputList = """

# select spawn
select_spawn = x=-266,y=25,z=9,dx=28,dy=5,dz=17


# particle coordinates
portal_particles_af = -252 26.25 27
portal_particles_cl = -237 26.25 18

# select for the portal
select_portal_af = x=-253,y=25,z=27,dx=2,dy=2
select_portal_cl = x=-237,y=25,z=17,dy=2,dz=2

# door bar
portal_bar_af = -251 26 27 -253 26 27
portal_bar_cl = -237 26 17 -237 26 19

# teleport to the arena
portal_tp_af = -249 5 37.0
portal_tp_cl = -216 4 18


# select Arenas
select_af = x=-272,y=4,z=35,dx=44,dy=45,dz=6
select_cl = x=-222,y=4,z=12,dx=20,dy=40,dz=13

# select winners
win_select_af = x=-272,y=40,z=40,dx=44
win_select_cl = x=-207,y=11,z=16,dy=1,dz=3

# pre select winners
win_pre_select_af = x=-272,y=41,z=40,dx=44,dy=1
win_pre_select=cl = x=-207,y=10,z=16,dy=24,dz=3

# sand block area
activate_struct_af = -273 42 36 -273 42 37
activate_struct_cl = -207 40 18

# clearing the sand in the arena
sand_fill_af = -229 41 36 -271 5 37
sand_fill_cl = -211 4 13 -221 33 23


""".splitlines()

for line in inputList:
    if not line.strip() or line.strip()[0] == "#":
        print(line)
        continue
    name, equals, selector = line.split(maxsplit=2)
    print("{0} = {1}".format(name, repr(Coords(selector)).replace(r"'", r'"')))
