scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=878514327,score_FLgam=878514327] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DR","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Diamond Race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 878514327"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Diamond Race","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Diamond Race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 878514327"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_DRpl_min=1,score_DRpl=1,m=2] ~ ~ ~ function ego:diamond_race/full_reset_player
scoreboard objectives remove DR
scoreboard objectives remove DRcd
scoreboard objectives remove DRpl
scoreboard teams remove DRr
kill @e[type=area_effect_cloud,tag=DR_cd]
fill 224 16 -34 230 16 -40 redstone_block 0 replace stonebrick 0
fill 224 14 -38 230 14 -36 stonebrick 0 replace redstone_block 0
fill 223 17 -36 223 17 -38 air 0
fill 222 17 -36 222 17 -38 stone_slab 5
scoreboard players tag * remove DRLap
