scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1456309508,score_FLgam=1456309508] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Resort","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1456309508"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Resort","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Resort","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1456309508"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHREpl_min=1,score_BHREpl=2,m=2] ~ ~ ~ function ego:bh_resort/full_reset_player
scoreboard players reset * HOST
kill @e[type=armor_stand,tag=BHREEntity]
scoreboard objectives remove BHREprng
scoreboard objectives remove BHRE
scoreboard objectives remove BHREpl
scoreboard objectives remove BHREsa
scoreboard objectives remove BHREti
scoreboard objectives remove BHREchi
scoreboard objectives remove BHREcvr
scoreboard objectives remove BHREgl
scoreboard objectives remove BHREcalc
scoreboard objectives remove BHREst
scoreboard teams remove BHREh
scoreboard teams remove BHREv
scoreboard teams remove BHREd_y
scoreboard teams remove BHREd_g
