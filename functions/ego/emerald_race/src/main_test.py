from lib.const_ints import *
from lib.floo_network import *
from lib.scoreboard import *
from lib.coords import Coords


# Scoreboard
OBJECTIVES.new_str("""
RRpl
RRas
RRcs stat.useItem.minecraft.carrot_on_a_stick RR carrot stick
RRxd _ RR ecks dee
""")

OBJECTIVES.new_str("""
pl
as
cs stat.useItem.minecraft.carrot_on_a_stick carrot stick
""", initials="ST", display="Sand Tomb")
OBJECTIVES["RRpl"].setdisplay("sidebar", "belowName")
print(OBJECTIVES["RRpl"])
print(str(OBJECTIVES))
print(repr(OBJECTIVES))
print(OBJECTIVES.cmd_init())
print(OBJECTIVES.cmd_term())

TEAMS.new_str("""
RRg RR green
color green
nametagVisibility hideForOtherTeams
friendlyfire false
collisionRule pushOwnTeam
    
RRb RR Blue
    color blue
    nametagVisibility hideForOtherTeams
    friendlyfire false
    collisionRule pushOwnTeam
""")
print(TEAMS["RRb"])
print(str(TEAMS))
print(repr(TEAMS))
print(TEAMS.cmd_init())
print(TEAMS.cmd_term())


# Constant integers
CONST_INTS.add_consts(25, 35, 1, 20)
CONST_INTS.add_consts(64, 23, 6, 1)

print(CONST_INTS.cmd_init())
print(repr(CONST_INTS.cmd_term()))


# Coordinates
coordRegion = Coords("-32 33 320 -52 28 320")
print(coordRegion)
print(str(coordRegion))
print(coordRegion.to_selector())

# Floo network
FlooRace = FlooEvent(ICE_RACE)
FlooPVP = FlooEvent(VIRUS_1, pvp="true")
FlooDeathPit = FlooEvent(DEATH_PIT, saturation="false")

print(FlooRace, FlooPVP, FlooDeathPit)
print(repr(ICE_RACE))
print(repr(VIRUS_1))
print(repr(DEATH_PIT))

places1 = ("belowName", "list", "sidebar", *("sidebar.team." + color for color in Colors.ALL if color != "reset"))
places2 = ("belowName", "list", "sidebar", "sidebar.team.aqua", "sidebar.team.black", "sidebar.team.blue", "sidebar.team.dark_aqua", "sidebar.team.dark_blue", "sidebar.team.dark_gray", "sidebar.team.dark_green", "sidebar.team.dark_purple", "sidebar.team.dark_red", "sidebar.team.gold", "sidebar.team.gray", "sidebar.team.green", "sidebar.team.light_purple", "sidebar.team.red", "sidebar.team.white", "sidebar.team.yellow")

print(places1)
print(places2)


for event in Event.members:
    print(event.text())
#     print(repr(event))
#     print(event.id)

