scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=526354106,score_FLgam=526354106] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHFC","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Four Corners","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 526354106"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Four Corners","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Four Corners","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 526354106"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHFCpl_min=1,score_BHFCpl=1,m=2] ~ ~ ~ function ego:bh_four_corners/full_reset_player
kill @e[type=armor_stand,tag=BHFCEntity]
bd undisguiseall
scoreboard objectives remove BHFCprng
scoreboard objectives remove BHFC
scoreboard objectives remove BHFCpl
scoreboard objectives remove BHFCsa
scoreboard objectives remove BHFCti
scoreboard objectives remove BHFCchi
scoreboard objectives remove BHFCcvr
scoreboard objectives remove BHFCgl
scoreboard objectives remove BHFCcalc
scoreboard objectives remove BHFCst
scoreboard teams remove BHFCh
scoreboard teams remove BHFCv
scoreboard teams remove BHFCd_y
scoreboard teams remove BHFCd_g
