scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=658982564,score_FLgam=658982564] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Rainbow","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 658982564"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Rainbow","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Rainbow","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 658982564"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHRApl_min=1,score_BHRApl=1,m=2] ~ ~ ~ function ego:bh_rainbow/full_reset_player
kill @e[type=armor_stand,tag=BHRAEntity]
bd undisguiseall
scoreboard objectives remove BHRAprng
scoreboard objectives remove BHRA
scoreboard objectives remove BHRApl
scoreboard objectives remove BHRAsa
scoreboard objectives remove BHRAti
scoreboard objectives remove BHRAchi
scoreboard objectives remove BHRAcvr
scoreboard objectives remove BHRAgl
scoreboard objectives remove BHRAcalc
scoreboard objectives remove BHRAst
scoreboard teams remove BHRAh
scoreboard teams remove BHRAv
scoreboard teams remove BHRAd_y
scoreboard teams remove BHRAd_g
