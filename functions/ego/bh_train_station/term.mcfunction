scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=993875352,score_FLgam=993875352] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHTS","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Train Station","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 993875352"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Train Station","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Train Station","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 993875352"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHTSpl_min=1,score_BHTSpl=2,m=2] ~ ~ ~ function ego:bh_train_station/full_reset_player
scoreboard players reset * HOST
kill @e[type=armor_stand,tag=BHTSEntity]
scoreboard objectives remove BHTSprng
scoreboard objectives remove BHTS
scoreboard objectives remove BHTSpl
scoreboard objectives remove BHTSsa
scoreboard objectives remove BHTSti
scoreboard objectives remove BHTSchi
scoreboard objectives remove BHTScvr
scoreboard objectives remove BHTSgl
scoreboard objectives remove BHTScalc
scoreboard objectives remove BHTSst
scoreboard teams remove BHTSh
scoreboard teams remove BHTSv
scoreboard teams remove BHTSd_y
scoreboard teams remove BHTSd_g
