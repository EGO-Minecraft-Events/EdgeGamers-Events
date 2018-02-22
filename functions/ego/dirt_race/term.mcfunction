scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=2140645621,score_FLgam=2140645621] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Dirt Race","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_DirtRpl_min=1,score_DirtRpl=1,m=2] ~ ~ ~ function ego:dirt_race/full_reset_player
scoreboard objectives remove DirtR
scoreboard objectives remove DirtRcd
scoreboard objectives remove DirtRpl
scoreboard objectives remove DirtRbc
scoreboard objectives remove DirtRcp
scoreboard objectives remove DirtRswim
scoreboard objectives remove DirtRdive
scoreboard teams remove DirtRr
kill @e[type=area_effect_cloud,tag=DirtR_cd]
fill 28 12 -187 28 12 -192 redstone_block 0 replace stonebrick 0
fill 64 12 -203 63 12 -203 air
setblock 66 12 -203 air
setblock 61 12 -203 air
