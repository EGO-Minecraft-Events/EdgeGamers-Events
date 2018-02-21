scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=244635863,score_FLgam=244635863] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHZ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Zelda","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244635863"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Zelda","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Zelda","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244635863"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHZpl_min=1,score_BHZpl=1,m=2] ~ ~ ~ function ego:bh_zelda/full_reset_player
kill @e[type=armor_stand,tag=BHZEntity]
bd undisguiseall
scoreboard objectives remove BHZprng
scoreboard objectives remove BHZ
scoreboard objectives remove BHZpl
scoreboard objectives remove BHZsa
scoreboard objectives remove BHZti
scoreboard objectives remove BHZchi
scoreboard objectives remove BHZcvr
scoreboard objectives remove BHZgl
scoreboard objectives remove BHZcalc
scoreboard objectives remove BHZst
scoreboard teams remove BHZh
scoreboard teams remove BHZv
scoreboard teams remove BHZd_y
scoreboard teams remove BHZd_g
