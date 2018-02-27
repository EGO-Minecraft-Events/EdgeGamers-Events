scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1061722156,score_FLgam=1061722156] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"NR","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Nether Race","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1061722156"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Nether Race","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Nether Race","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1061722156"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_NRpl_min=1,score_NRpl=1,m=2] ~ ~ ~ function ego:nether_race/full_reset_player
scoreboard objectives remove NR
scoreboard objectives remove NRcd
scoreboard objectives remove NRpl
scoreboard objectives remove NRbc
scoreboard objectives remove NRcp
scoreboard teams remove NRr
kill @e[type=area_effect_cloud,tag=NR_cd]
fill 68 5 -100 68 5 -104 redstone_block 0 replace stonebrick 0
setblock 73 12 -102 air
setblock 73 12 -100 air
setblock 73 12 -104 air
