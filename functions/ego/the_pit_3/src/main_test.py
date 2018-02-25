from lib.floo_network import THE_PIT_3, FlooEvent
from lib.const_ints import CONST_INTS
from lib.scoreboard import OBJECTIVES, TEAMS
from lib.consts import Sounds, Effects
from lib.coords import Coords


event = THE_PIT_3
floo_event = FlooEvent(THE_PIT_3, pvp="true")
initials = "TP"
select_all = event.select_all

select_spawn = Coords("-107 25 193 -98 30 202")
select_arena = Coords("-107 6 146 -51 56 202")

# teleport coords to get to the spectator area
# selection of the area around the above teleport coords
select_spectate = Coords("-111 16 204 -109 20 206")


# teleport to the arena inside the middle ball
arena_tp = Coords("-79 18 174")

# activates the structure for loading up the middle ball
activate_struct_mid = Coords("-80 7 174")

# fill region to clear out the middle ball
mid_ball_region = Coords("-77 17 172 -81 22 176")

# region to kill all players on the floor
floor_region = Coords("-107 6 146 -51 6 202")

# region to kill all players on the sides of the middle pillar
pillar_sides_region = Coords("-81 6 172 -77 9 176")

# region to kill all players actually on the middle pillar
on_pillar_region = Coords("-82 10 171 -82 10 177")

# region on top of the middle ball
mid_ball_upper_region = Coords("-81 23 172 -77 23 176")

# select the walls
walls_west_region = Coords("-108 6 146 -108 38 202").selector()
walls_east_region = Coords("-50 6 146 -50 38 202").selector()
walls_north_region = Coords("-107 6 145 -51 38 145").selector()
walls_south_region = Coords("-107 6 203 -51 38 203").selector()


tp_to_west = Coords("~-1 ~ ~")
tp_to_east = Coords("~1 ~ ~")
tp_to_south = Coords("~ ~ ~1")
tp_to_north = Coords("~ ~ ~-1")


# region to select the entire platform
platform_region = Coords("-59 10 194 -99 10 154")

# ending position for the clone of the platform to the calculation area
deg_clone_calc_dest = Coords("-54 4 230")

# region to select the degrading platform calculations
deg_select_calc = Coords("-54 4 230 -14 4 270")

# region to activate the structure blocks for saving the finalized calculations
deg_activate_calc_save = Coords("-35 5 249 -33 5 251")

# region to activate the structure blocks for loading
# the calculated degrading platform
deg_activate_calc_load = Coords("-80 2 175 -78 2 173")

r'''
DEF CCItem_Blaze3Reg blaze_rod 1 0 {display:{Name:"A Poking Stick",Lore:["Knockback 3"]},ench:[{id:19,lvl:3}],HideFlags:127}
DEF CCItem_Blaze5Reg blaze_rod 1 0 {display:{Name:"A Better Poking Stick",Lore:["Knockback 5"]},ench:[{id:19,lvl:5}],HideFlags:127}

DEF CCItem_Bow bow 1 0 {display:{Name:"A Bow",Lore:["Punch 2"]},ench:[{id:49,lvl:2},{id:51,lvl:1}],HideFlags:127,Unbreakable:1}
DEF CCItem_Arrow arrow 1 0 {display:{Name:"An Arrow"},ench:[{id:0,lvl:1}],HideFlags:127}

DEF CCItem_PorkchopReg porkchop 1 0 {display:{Name:"The Holy Porkchop"},ench:[{id:19,lvl:9001}],HideFlags:127}
'''

OBJECTIVES.new_str("""
    . _ .
    ti _ Timer
    cl _ Random Calcs
    af _ Affected Items
    we _ Weakness
    st _ State

    # Used on the TPStand to calculate the timer
    # for the degrading arena. This is set to -1
    # when it is not a degrading arena
    dg _ Degrading Arena

    # at _ Arena Type

    # Used on the TPStand to use as input to get the arena type
    # 0 = reg_small, 1 = reg_large, 2 = deg_small, 3 = deg_large
    iat _ Arena Type Input

    # 0 = being initialized
    # 1 = has been initialized
    # 2 = in game
    # 3 = in spectator area (changes back to 1 if in lobby)
    # 4 = forever as spectator (changes back to 1 if in lobby)
    pl _ Player List
    
    # effects
    # ef dummy Effect
    # efc dummy Effect Calc

    # weapons
    # wtc dummy Weapon Type Calc 2
    # wtg dummy Weapon Type Give

    # pu dummy Pumpkin
    # put dummy Pumpkin Timer
    # puc dummy Pumpkin Calc

    # oas _ Arena Size
    # oat _ Arena Type
    # owe _ Weapon
    # oju _ Jump
    # omo _ Movement
    # ons _ NoSprint

    # tp _ Teleport
    # xp _ XP Calculations
    # TPtm _ Temp Calcs
    # TPop _ Option
    # TPti2 _ Timer Seconds
    # TPde deathCount Deaths
    # TPcs stat.useItem.minecraft.carrot_on_a_stick Carrot Stick
    # TPsa _ Select All
""", initials=initials, display="The Pit")

OBJECTIVES[initials].setdisplay("sidebar")

CONST_INTS.add_consts(20, 40, 100)
    
TEAMS.new_str("""
    . Players
        color green
        friendlyfire true

    d_y Display Yellow
        color yellow

    d_g Display Green
        color green
""", initials=initials, display="The Pit")



# region to save the original platform blocks
init_struct_save = Coords("-79 14 251 -79 11 251")

# the coordinates for the four structure blocks required to load in a platform
struct_load_plat_1 = Coords("-78 5 174")
struct_load_plat_2 = Coords("-79 5 175")
struct_load_plat_3 = Coords("-80 5 174")
struct_load_plat_4 = Coords("-79 5 174")

# region to activate the platform loading
activate_load_plat = Coords("-78 6 175 -80 6 173")

# all tags that are universal with all structure blocks for initializing the platform
init_struct_tags = r'sizeX:21,sizeY:1,sizeZ:21,showboundingbox:0b,mode:"LOAD",ignoreEntities:1b'
