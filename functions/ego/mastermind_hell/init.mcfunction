function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 525124045
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=172,y=21,z=71,dx=62,dy=-17,dz=-53] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard objectives add MMH dummy MM Hell
scoreboard objectives setdisplay sidebar MMH
scoreboard objectives add MMHpl dummy MM Hell Player List
scoreboard objectives add MMHcl dummy MM Hell Calculations
scoreboard objectives add MMHst dummy MM Hell State
scoreboard objectives add MMHec dummy MM Hell EC scoreboard
scoreboard objectives setdisplay sidebar.team.white MMHec
scoreboard objectives add MMHrn dummy MM Hell Room Number
scoreboard objectives add MMHgn dummy MM Hell Guess Number
scoreboard objectives add MMHign dummy MM Hell Guess Number Input
scoreboard objectives add MMHbi dummy MM Hell Block ID
scoreboard objectives add MMHca dummy MM Hell Correct Answer
scoreboard objectives add MMHra dummy MM Hell Repeated Answer
scoreboard objectives add MMHna dummy MM Hell No Answer
scoreboard teams add MMHblack
scoreboard teams option MMHblack color black
scoreboard teams add MMHred
scoreboard teams option MMHred color red
scoreboard teams add MMHblue
scoreboard teams option MMHblue color blue
scoreboard teams add MMHgreen
scoreboard teams option MMHgreen color green
scoreboard teams add MMHgray
scoreboard teams option MMHgray color gray
scoreboard teams add MMHgold
scoreboard teams option MMHgold color gold
scoreboard teams add MMHaqua
scoreboard teams option MMHaqua color aqua
scoreboard teams add MMHwhite Mastermind Hell Host Team
scoreboard teams option MMHwhite color white
scoreboard players set @s HOST 0
gamerule doTileDrops true
setblock 184 5 88 redstone_block 0 replace stonebrick 0
setblock 184 5 88 stonebrick 0 replace redstone_block 0
summon armor_stand ~ ~ ~ {Tags:["MMHEntity","MMHStand"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MMH","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind Hell","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 525124045"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind Hell","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind Hell","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 525124045"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 525124045
summon armor_stand 196 4 40 {Tags:["MMHEntity","MMHRoom","MMHRoom1","MMHInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 196 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect1","MMHInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 196 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect2","MMHInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 196 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect3","MMHInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 196 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect4","MMHInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 196 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect5","MMHInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 196 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect6","MMHInRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMHInRoom1] MMHrn 1
summon armor_stand 208 4 40 {Tags:["MMHEntity","MMHRoom","MMHRoom2","MMHInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 208 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect1","MMHInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 208 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect2","MMHInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 208 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect3","MMHInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 208 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect4","MMHInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 208 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect5","MMHInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 208 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect6","MMHInRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMHInRoom2] MMHrn 2
summon armor_stand 220 4 40 {Tags:["MMHEntity","MMHRoom","MMHRoom3","MMHInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 220 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect1","MMHInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 220 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect2","MMHInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 220 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect3","MMHInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 220 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect4","MMHInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 220 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect5","MMHInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 220 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect6","MMHInRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMHInRoom3] MMHrn 3
summon armor_stand 232 4 40 {Tags:["MMHEntity","MMHRoom","MMHRoom4","MMHInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 232 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect1","MMHInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 232 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect2","MMHInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 232 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect3","MMHInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 232 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect4","MMHInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 232 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect5","MMHInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 232 4 40 {Tags:["MMHEntity","MMHCorrect","MMHCorrect6","MMHInRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMHInRoom4] MMHrn 4
summon armor_stand 187 4 49 {Tags:["MMHEntity","MMHRoom","MMHRoom5","MMHInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 187 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect1","MMHInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 187 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect2","MMHInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 187 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect3","MMHInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 187 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect4","MMHInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 187 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect5","MMHInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 187 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect6","MMHInRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMHInRoom5] MMHrn 5
summon armor_stand 199 4 49 {Tags:["MMHEntity","MMHRoom","MMHRoom6","MMHInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 199 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect1","MMHInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 199 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect2","MMHInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 199 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect3","MMHInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 199 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect4","MMHInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 199 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect5","MMHInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 199 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect6","MMHInRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMHInRoom6] MMHrn 6
summon armor_stand 211 4 49 {Tags:["MMHEntity","MMHRoom","MMHRoom7","MMHInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 211 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect1","MMHInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 211 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect2","MMHInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 211 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect3","MMHInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 211 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect4","MMHInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 211 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect5","MMHInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 211 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect6","MMHInRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMHInRoom7] MMHrn 7
summon armor_stand 223 4 49 {Tags:["MMHEntity","MMHRoom","MMHRoom8","MMHInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 223 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect1","MMHInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 223 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect2","MMHInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 223 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect3","MMHInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 223 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect4","MMHInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 223 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect5","MMHInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
summon armor_stand 223 4 49 {Tags:["MMHEntity","MMHCorrect","MMHCorrect6","MMHInRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMHInRoom8] MMHrn 8
function ego:mastermind_hell/teleport_correct
function ego:mastermind_hell/randomize
