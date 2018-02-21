scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=924805254,score_FLgam=924805254] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Apocalypse","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 924805254"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Apocalypse","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Apocalypse","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 924805254"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHApl_min=1,score_BHApl=1,m=2] ~ ~ ~ function ego:bh_apocalypse/full_reset_player
kill @e[type=armor_stand,tag=BHAEntity]
bd undisguiseall
scoreboard objectives remove BHAprng
scoreboard objectives remove BHA
scoreboard objectives remove BHApl
scoreboard objectives remove BHAsa
scoreboard objectives remove BHAti
scoreboard objectives remove BHAchi
scoreboard objectives remove BHAcvr
scoreboard objectives remove BHAgl
scoreboard objectives remove BHAcalc
scoreboard objectives remove BHAst
scoreboard teams remove BHAh
scoreboard teams remove BHAv
scoreboard teams remove BHAd_y
scoreboard teams remove BHAd_g
