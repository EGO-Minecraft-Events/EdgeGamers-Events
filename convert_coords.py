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

"""
inputList = """

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

""".splitlines()

for line in inputList:
    if not line.strip() or line.strip()[0] == "#":
        print(line)
        continue
    name, equals, selector = line.split(maxsplit=2)
    print("{0} = {1}".format(name, repr(Coords(selector)).replace(r"'", r'"')))
