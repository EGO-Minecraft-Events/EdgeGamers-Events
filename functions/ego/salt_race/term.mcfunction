scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=942958520,score_FLgam=942958520] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"SaltR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Salt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 942958520"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Salt Race","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Salt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 942958520"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_SaltRpl_min=1,score_SaltRpl=1,m=2] ~ ~ ~ function ego:salt_race/full_reset_player
scoreboard objectives remove SaltR
scoreboard objectives remove SaltRcd
scoreboard objectives remove SaltRpl
scoreboard objectives remove SaltRbc
scoreboard objectives remove SaltRcp
scoreboard teams remove SaltRr
kill @e[type=area_effect_cloud,tag=SaltR_cd]
fill 468 6 -31 468 6 -35 redstone_block 0 replace stonebrick 0
setblock 459 11 -35 air
setblock 459 11 -33 air
setblock 459 11 -31 air
