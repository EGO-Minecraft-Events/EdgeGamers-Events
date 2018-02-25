function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 586508005
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-122,y=4,z=133,dx=79,dy=50,dz=91] gSA 1
scoreboard objectives add constants dummy
scoreboard players set 100 constants 100
scoreboard players set 20 constants 20
scoreboard players set 40 constants 40
scoreboard objectives add TP dummy The Pit
scoreboard objectives setdisplay sidebar TP
scoreboard objectives add TPti dummy The Pit Timer
scoreboard objectives add TPcl dummy The Pit Random Calcs
scoreboard objectives add TPaf dummy The Pit Affected Items
scoreboard objectives add TPwe dummy The Pit Weakness
scoreboard objectives add TPst dummy The Pit State
scoreboard objectives add TPdg dummy The Pit Degrading Arena
scoreboard objectives add TPiat dummy The Pit Arena Type Input
scoreboard objectives add TPiwt dummy The Pit Weapon Type Input
scoreboard objectives add TPpl dummy The Pit Player List
scoreboard teams add TP The Pit Players
scoreboard teams option TP color green
scoreboard teams option TP friendlyfire true
scoreboard teams add TPd_y The Pit Display Yellow
scoreboard teams option TPd_y color yellow
scoreboard teams add TPd_g The Pit Display Green
scoreboard teams option TPd_g color green
scoreboard teams join TPd_g Players
scoreboard teams join TPd_y Time_Elapsed Countdown
setblock -78 5 174 structure_block 0 replace {rotation:"NONE",posX:-1,posY:5,posZ:0,sizeX:21,sizeY:1,sizeZ:21,showboundingbox:0b,mode:"LOAD",ignoreEntities:1b}
setblock -79 5 175 structure_block 0 replace {rotation:"CLOCKWISE_90",posX:0,posY:5,posZ:-1,sizeX:21,sizeY:1,sizeZ:21,showboundingbox:0b,mode:"LOAD",ignoreEntities:1b}
setblock -80 5 174 structure_block 0 replace {rotation:"CLOCKWISE_180",posX:1,posY:5,posZ:0,sizeX:21,sizeY:1,sizeZ:21,showboundingbox:0b,mode:"LOAD",ignoreEntities:1b}
setblock -79 5 173 structure_block 0 replace {rotation:"COUNTERCLOCKWISE_90",posX:0,posY:5,posZ:1,sizeX:21,sizeY:1,sizeZ:21,showboundingbox:0b,mode:"LOAD",ignoreEntities:1b}
fill -79 14 251 -79 11 251 redstone_block
fill -79 14 251 -79 11 251 stonebrick
summon armor_stand ~ ~ ~ {Tags:["TPEntity","TPStand"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
scoreboard players set @e[type=armor_stand,tag=TPStand] TPst 0
scoreboard players set @e[type=armor_stand,tag=TPStand] TPiat 1
scoreboard players set @e[type=armor_stand,tag=TPStand] TPiwt -1
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"TPL3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The Pit 3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 586508005
