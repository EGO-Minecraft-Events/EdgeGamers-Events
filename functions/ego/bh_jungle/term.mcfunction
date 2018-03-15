scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=184603297,score_FLgam=184603297] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHJ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Jungle","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 184603297"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Jungle","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Jungle","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 184603297"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHJpl_min=1,score_BHJpl=2,m=2] ~ ~ ~ function ego:bh_jungle/full_reset_player
scoreboard players reset * HOST
kill @e[type=armor_stand,tag=BHJEntity]
scoreboard objectives remove BHJprng
scoreboard objectives remove BHJ
scoreboard objectives remove BHJpl
scoreboard objectives remove BHJsa
scoreboard objectives remove BHJti
scoreboard objectives remove BHJchi
scoreboard objectives remove BHJcvr
scoreboard objectives remove BHJgl
scoreboard objectives remove BHJcalc
scoreboard objectives remove BHJst
scoreboard teams remove BHJh
scoreboard teams remove BHJv
scoreboard teams remove BHJd_y
scoreboard teams remove BHJd_g
