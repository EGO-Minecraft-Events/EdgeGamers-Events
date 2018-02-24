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
scoreboard objectives add MMrs dummy Mastermind Room Select
scoreboard objectives add MMpa dummy Mastermind Predicted Answer
scoreboard objectives add MMsd dummy Mastermind Sign Display
scoreboard objectives add MMra dummy Mastermind Repeated Answer
scoreboard objectives add MMna dummy Mastermind No Answer
scoreboard objectives add MMgc dummy Mastermind Guess Check
scoreboard objectives add MMgl dummy Mastermind Guess Calc
scoreboard objectives add MMit dummy Mastermind Item
scoreboard objectives add MMop dummy Mastermind Options
scoreboard objectives add MMrg dummy Mastermind Right Guess
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
fill 107 4 82 96 4 82 redstone_block 0 replace stonebrick 0
fill 107 4 82 96 4 82 stonebrick 0 replace redstone_block 0
summon armor_stand ~ ~ ~ {Tags:["MMEntity","MMStand"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1217546713
summon armor_stand 53 4 36 {Tags:["MMEntity","MMRoom","MMRoom1"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom1] MMrs -1
summon armor_stand 64 4 36 {Tags:["MMEntity","MMRoom","MMRoom2"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom2] MMrs -2
summon armor_stand 75 4 36 {Tags:["MMEntity","MMRoom","MMRoom3"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom3] MMrs -3
summon armor_stand 86 4 36 {Tags:["MMEntity","MMRoom","MMRoom4"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom4] MMrs -4
summon armor_stand 97 4 36 {Tags:["MMEntity","MMRoom","MMRoom5"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom5] MMrs -5
summon armor_stand 108 4 36 {Tags:["MMEntity","MMRoom","MMRoom6"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom6] MMrs -6
summon armor_stand 46 4 47 {Tags:["MMEntity","MMRoom","MMRoom7"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom7] MMrs -7
summon armor_stand 57 4 47 {Tags:["MMEntity","MMRoom","MMRoom8"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom8] MMrs -8
summon armor_stand 68 4 47 {Tags:["MMEntity","MMRoom","MMRoom9"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom9] MMrs -9
summon armor_stand 79 4 47 {Tags:["MMEntity","MMRoom","MMRoom10"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom10] MMrs -10
summon armor_stand 90 4 47 {Tags:["MMEntity","MMRoom","MMRoom11"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom11] MMrs -11
summon armor_stand 101 4 47 {Tags:["MMEntity","MMRoom","MMRoom12"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=MMRoom12] MMrs -12
execute @e[type=armor_stand,tag=MMRoom] ~ ~ ~ scoreboard players operation @s MMrn = @s MMrs
scoreboard players operation @e[type=armor_stand,tag=MMRoom] MMrn *= -1 Number
