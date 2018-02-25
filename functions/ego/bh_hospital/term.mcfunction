scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1159673785,score_FLgam=1159673785] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHH","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Hospital","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1159673785"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Hospital","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Hospital","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1159673785"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHHpl_min=1,score_BHHpl=1,m=2] ~ ~ ~ function ego:bh_hospital/full_reset_player
kill @e[type=armor_stand,tag=BHHEntity]
bd undisguiseall
scoreboard objectives remove BHHprng
scoreboard objectives remove BHH
scoreboard objectives remove BHHpl
scoreboard objectives remove BHHsa
scoreboard objectives remove BHHti
scoreboard objectives remove BHHchi
scoreboard objectives remove BHHcvr
scoreboard objectives remove BHHgl
scoreboard objectives remove BHHcalc
scoreboard objectives remove BHHst
scoreboard teams remove BHHh
scoreboard teams remove BHHv
scoreboard teams remove BHHd_y
scoreboard teams remove BHHd_g
