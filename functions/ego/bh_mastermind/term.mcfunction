scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=498683800,score_FLgam=498683800] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 498683800"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 498683800"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHMMpl_min=1,score_BHMMpl=1,m=2] ~ ~ ~ function ego:bh_mastermind/full_reset_player
kill @e[type=armor_stand,tag=BHMMEntity]
bd undisguiseall
scoreboard objectives remove BHMMprng
scoreboard objectives remove BHMM
scoreboard objectives remove BHMMpl
scoreboard objectives remove BHMMsa
scoreboard objectives remove BHMMti
scoreboard objectives remove BHMMchi
scoreboard objectives remove BHMMcvr
scoreboard objectives remove BHMMgl
scoreboard objectives remove BHMMcalc
scoreboard objectives remove BHMMst
scoreboard teams remove BHMMh
scoreboard teams remove BHMMv
scoreboard teams remove BHMMd_y
scoreboard teams remove BHMMd_g
