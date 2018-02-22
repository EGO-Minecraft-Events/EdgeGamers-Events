
from lib.floo_network import ANVIL_DROP, FlooEvent
from lib.const_ints import CONST_INTS
from lib.scoreboard import OBJECTIVES, TEAMS
from lib.consts import *
from lib.coords import Coords


event = ANVIL_DROP
floo_event = FlooEvent(event, saturation="false")

select_spawn_coords = Coords("-19 4 85 -12 9 89")
select_spawn = select_spawn_coords.selector()

select_arena_coords = Coords("-33 2 81 -21 7 93")
select_arena = select_arena_coords.selector()


# region coords to be quickly set with redstone and back to stonebrick
# to save the structure blocks for "AD_layer" and "AD_walls"
save_layers = Coords("-57 5 80 -57 4 80")

# Placement of the structure blocks
struct_1 = Coords("-36 15 79")
struct_2 = Coords("-36 14 79")
struct_walls = Coords("-36 13 79")

# Placement of the redstone blocks required to activate
# the structure blocks
layer_1 = Coords("-36 15 80")
layer_2 = Coords("-36 14 80")
layer_walls = Coords("-36 13 80")

door_region = Coords("20 7 88 -20 5 86")
    
OBJECTIVES.new_str("""
    . _ .

    # used by players to input a new percent for layer 1
    # and layer 2 respectively. The default value is -1, and when
    # a value is detected that is greater than -1, then the percent
    # is changed
    pe1 _ Input Layer 1 %
    pe2 _ Input Layer 2 &

    # used by ADStand to hold the timer for all 3 layers
    # also used to do the countdown timer
    ti _ Countdown Timer
    ti1 _ Layer 1 Timer
    ti2 _ Layer 2 Timer
    ti3 _ Layer 3 Timer

    # Holds all player states
    # 0 = will be initialized
    # 1 = inside the game as either the spectator or player
    # 2 = inside the round
    pl _ Player List

    # 0 = waiting, during the open/close door phase
    # 1 = round start
    # 2 = during countdown
    # 3 = during round
    # 4 = game stop, announces winner --> 0
    st _ State

    # Holds a bunch of fake names
    dp _ display

    # cl _ Calc
    # te _ Time Elapsed
    # te2 _ Time Elapsed
    # de deathCount Anvil Drop Deaths
    # pc _ Percent Calc
    # ps _ Percent Set
    # ti _ Timer

""", initials="AD", display="Anvil Drop")

OBJECTIVES["AD"].setdisplay("sidebar")

TEAMS.new_str("""
. .
    color green
    collisionRule never
    friendlyfire false

d_y . Display Yellow
    color yellow
""", initials="AD", display="Anvil Drop")