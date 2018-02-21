scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1864175872,score_FLgam=1864175872] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mushroom Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1864175872"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mushroom Village","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mushroom Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1864175872"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHMVpl_min=1,score_BHMVpl=1,m=2] ~ ~ ~ function ego:bh_mushroom_village/full_reset_player
kill @e[type=armor_stand,tag=BHMVEntity]
bd undisguiseall
scoreboard objectives remove BHMVprng
scoreboard objectives remove BHMV
scoreboard objectives remove BHMVpl
scoreboard objectives remove BHMVsa
scoreboard objectives remove BHMVti
scoreboard objectives remove BHMVchi
scoreboard objectives remove BHMVcvr
scoreboard objectives remove BHMVgl
scoreboard objectives remove BHMVcalc
scoreboard objectives remove BHMVst
scoreboard teams remove BHMVh
scoreboard teams remove BHMVv
scoreboard teams remove BHMVd_y
scoreboard teams remove BHMVd_g
