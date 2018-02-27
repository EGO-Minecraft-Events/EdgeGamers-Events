scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=720573389,score_FLgam=720573389] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"SR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Slow Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 720573389"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Slow Race","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Slow Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 720573389"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_SRpl_min=1,score_SRpl=1,m=2] ~ ~ ~ function ego:slow_race/full_reset_player
scoreboard objectives remove SR
scoreboard objectives remove SRcd
scoreboard objectives remove SRpl
scoreboard objectives remove SRbc
scoreboard teams remove SRr
kill @e[type=area_effect_cloud,tag=SR_cd]
fill 71 5 -82 71 5 -78 redstone_block 0 replace stonebrick 0
setblock 70 11 -80 air
setblock 70 11 -78 air
setblock 70 11 -82 air
