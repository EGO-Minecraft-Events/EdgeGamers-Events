scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=2089458069,score_FLgam=2089458069] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHP","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Park","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2089458069"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Park","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Park","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2089458069"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHPpl_min=1,score_BHPpl=1,m=2] ~ ~ ~ function ego:bh_park/full_reset_player
kill @e[type=armor_stand,tag=BHPEntity]
bd undisguiseall
scoreboard objectives remove BHPprng
scoreboard objectives remove BHP
scoreboard objectives remove BHPpl
scoreboard objectives remove BHPsa
scoreboard objectives remove BHPti
scoreboard objectives remove BHPchi
scoreboard objectives remove BHPcvr
scoreboard objectives remove BHPgl
scoreboard objectives remove BHPcalc
scoreboard objectives remove BHPst
scoreboard teams remove BHPh
scoreboard teams remove BHPv
scoreboard teams remove BHPd_y
scoreboard teams remove BHPd_g
