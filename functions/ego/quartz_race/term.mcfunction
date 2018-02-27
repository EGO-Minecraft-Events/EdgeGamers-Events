scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1964796834,score_FLgam=1964796834] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Quartz Race","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_QRpl_min=1,score_QRpl=1,m=2] ~ ~ ~ function ego:quartz_race/full_reset_player
scoreboard objectives remove QR
scoreboard objectives remove QRcd
scoreboard objectives remove QRpl
scoreboard teams remove QRr
kill @e[type=area_effect_cloud,tag=QR_cd]
fill 240 6 -160 232 6 -154 redstone_block 0 replace stonebrick 0
fill 232 4 -156 240 4 -158 stonebrick 0 replace redstone_block 0
fill 231 7 -158 231 7 -156 quartz_stairs 1
scoreboard players tag * remove QRLap
