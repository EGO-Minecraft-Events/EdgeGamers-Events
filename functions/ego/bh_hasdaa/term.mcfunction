scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=882469132,score_FLgam=882469132] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHHD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"HASDaa","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 882469132"}},{"text":"]","color":"gray"},{"text":": "},{"text":"HASDaa","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"HASDaa","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 882469132"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHHDpl_min=1,score_BHHDpl=1,m=2] ~ ~ ~ function ego:bh_hasdaa/full_reset_player
kill @e[type=armor_stand,tag=BHHDEntity]
bd undisguiseall
scoreboard objectives remove BHHDprng
scoreboard objectives remove BHHD
scoreboard objectives remove BHHDpl
scoreboard objectives remove BHHDsa
scoreboard objectives remove BHHDti
scoreboard objectives remove BHHDchi
scoreboard objectives remove BHHDcvr
scoreboard objectives remove BHHDgl
scoreboard objectives remove BHHDcalc
scoreboard objectives remove BHHDst
scoreboard teams remove BHHDh
scoreboard teams remove BHHDv
scoreboard teams remove BHHDd_y
scoreboard teams remove BHHDd_g
