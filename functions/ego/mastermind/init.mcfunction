function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 1217546713
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=45,y=3,z=22,dx=64,dy=30,dz=65] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard objectives add MM dummy Mastermind
scoreboard objectives setdisplay sidebar MM
scoreboard objectives add MMpl dummy Mastermind Player List
scoreboard objectives add MMcl dummy Mastermind Calculations
scoreboard objectives add MMst dummy Mastermind State
scoreboard objectives add MMec dummy Mastermind EC scoreboard
scoreboard objectives setdisplay sidebar.team.white MMec
scoreboard objectives add MMrn dummy Mastermind Room Number
scoreboard objectives add MMgn dummy Mastermind Guess Number
scoreboard objectives add MMign dummy Mastermind Guess Number Input
scoreboard objectives add MMbi dummy Mastermind Block ID
scoreboard objectives add MMca dummy Mastermind Correct Answer
scoreboard objectives add MMra dummy Mastermind Repeated Answer
scoreboard objectives add MMna dummy Mastermind No Answer
scoreboard teams add MMred
scoreboard teams option MMred color red
scoreboard teams add MMlime
scoreboard teams option MMlime color green
scoreboard teams add MMcyan
scoreboard teams option MMcyan color dark_aqua
scoreboard teams add MMmagenta
scoreboard teams option MMmagenta color dark_purple
scoreboard teams add MMpink
scoreboard teams option MMpink color light_purple
scoreboard teams add MMorange
scoreboard teams option MMorange color gold
scoreboard teams add MMwhite Mastermind Host Team
scoreboard teams option MMwhite color white
scoreboard players set @s HOST 0
gamerule doTileDrops true
fill 107 4 82 96 4 82 redstone_block 0 replace stonebrick 0
fill 107 4 82 96 4 82 stonebrick 0 replace redstone_block 0
summon armor_stand ~ ~ ~ {Tags:["MMEntity","MMStand"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1217546713
summon armor_stand 53 4 36 {Tags:["MMEntity","MMRoom","MMRoom1","MMInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 53 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 53 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 53 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 53 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom1] MMrn 1
summon armor_stand 64 4 36 {Tags:["MMEntity","MMRoom","MMRoom2","MMInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 64 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 64 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 64 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 64 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom2] MMrn 2
summon armor_stand 75 4 36 {Tags:["MMEntity","MMRoom","MMRoom3","MMInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 75 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 75 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 75 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 75 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom3] MMrn 3
summon armor_stand 86 4 36 {Tags:["MMEntity","MMRoom","MMRoom4","MMInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 86 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 86 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 86 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 86 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom4] MMrn 4
summon armor_stand 97 4 36 {Tags:["MMEntity","MMRoom","MMRoom5","MMInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 97 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 97 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 97 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 97 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom5] MMrn 5
summon armor_stand 108 4 36 {Tags:["MMEntity","MMRoom","MMRoom6","MMInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 108 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 108 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 108 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 108 4 36 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom6] MMrn 6
summon armor_stand 46 4 47 {Tags:["MMEntity","MMRoom","MMRoom7","MMInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 46 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 46 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 46 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 46 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom7] MMrn 7
summon armor_stand 57 4 47 {Tags:["MMEntity","MMRoom","MMRoom8","MMInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 57 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 57 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 57 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 57 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom8] MMrn 8
summon armor_stand 68 4 47 {Tags:["MMEntity","MMRoom","MMRoom9","MMInRoom9"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 68 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom9"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 68 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom9"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 68 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom9"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 68 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom9"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom9] MMrn 9
summon armor_stand 79 4 47 {Tags:["MMEntity","MMRoom","MMRoom10","MMInRoom10"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 79 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom10"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 79 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom10"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 79 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom10"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 79 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom10"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom10] MMrn 10
summon armor_stand 90 4 47 {Tags:["MMEntity","MMRoom","MMRoom11","MMInRoom11"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 90 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom11"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 90 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom11"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 90 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom11"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 90 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom11"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom11] MMrn 11
summon armor_stand 101 4 47 {Tags:["MMEntity","MMRoom","MMRoom12","MMInRoom12"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 101 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect1","MMInRoom12"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 101 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect2","MMInRoom12"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 101 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect3","MMInRoom12"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 101 4 47 {Tags:["MMEntity","MMCorrect","MMCorrect4","MMInRoom12"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMInRoom12] MMrn 12
function ego:mastermind/teleport_correct
function ego:mastermind/randomize
