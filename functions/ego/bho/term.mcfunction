scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=193451326,score_FLgam=193451326] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHO","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BHO","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 193451326"}},{"text":"]","color":"gray"},{"text":": "},{"text":"BHO","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BHO","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 193451326"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHOpl_min=1,score_BHOpl=1,m=2] ~ ~ ~ function ego:bho/full_reset_player
kill @e[type=armor_stand,tag=BHOEntity]
bd undisguiseall
scoreboard objectives remove BHOprng
scoreboard objectives remove BHO
scoreboard objectives remove BHOpl
scoreboard objectives remove BHOsa
scoreboard objectives remove BHOti
scoreboard objectives remove BHOchi
scoreboard objectives remove BHOcvr
scoreboard objectives remove BHOgl
scoreboard objectives remove BHOcalc
scoreboard objectives remove BHOst
scoreboard teams remove BHOh
scoreboard teams remove BHOv
scoreboard teams remove BHOd_y
scoreboard teams remove BHOd_g
