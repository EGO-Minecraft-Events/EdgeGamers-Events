scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1807172851,score_FLgam=1807172851] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1807172851"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1807172851"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHMpl_min=1,score_BHMpl=1,m=2] ~ ~ ~ function ego:bh_mastermind/full_reset_player
kill @e[type=armor_stand,tag=BHMEntity]
bd undisguiseall
scoreboard objectives remove BHMprng
scoreboard objectives remove BHM
scoreboard objectives remove BHMpl
scoreboard objectives remove BHMsa
scoreboard objectives remove BHMti
scoreboard objectives remove BHMchi
scoreboard objectives remove BHMcvr
scoreboard objectives remove BHMgl
scoreboard objectives remove BHMcalc
scoreboard objectives remove BHMst
scoreboard teams remove BHMh
scoreboard teams remove BHMv
scoreboard teams remove BHMd_y
scoreboard teams remove BHMd_g
