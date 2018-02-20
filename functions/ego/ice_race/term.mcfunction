scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=227577150,score_FLgam=227577150] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"IR","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Ice race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 227577150"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Ice race","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Ice race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 227577150"}},{"text":" has stopped!","color":"red"}]}
scoreboard objectives remove IR
scoreboard objectives remove IRcd
scoreboard objectives remove IRcl
scoreboard objectives remove IRde
scoreboard objectives remove IRbc
scoreboard teams remove IRr
kill @e[type=area_effect_cloud,tag=IRcountdown]
effect @a[score_gSA_min=1,score_gSA=1] clear
clear @a[score_gSA_min=1,score_gSA=1,m=2]
scoreboard players set @a[score_gSA_min=1,score_gSA=1,m=2,score_EC_min=0,score_EC=0] FLbk 227577150
effect @a[score_gSA_min=1,score_gSA=1,m=2] minecraft:instant_health 20 100 true
scoreboard players set @a[score_gSA_min=1,score_gSA=1,m=2] FLtp 227577150
fill 66 34 -42 66 34 -48 redstone_block 0 replace stonebrick 0
fill 42 33 -31 42 33 -32 air
setblock 42 33 -28 air
setblock 42 33 -35 air
