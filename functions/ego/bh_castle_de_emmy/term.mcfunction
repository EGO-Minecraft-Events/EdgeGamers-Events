scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=606156446,score_FLgam=606156446] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHCDE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Castle de Emmy","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 606156446"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Castle de Emmy","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Castle de Emmy","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 606156446"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHCDEpl_min=1,score_BHCDEpl=1,m=2] ~ ~ ~ function ego:bh_castle_de_emmy/full_reset_player
kill @e[type=armor_stand,tag=BHCDEEntity]
bd undisguiseall
scoreboard objectives remove BHCDEprng
scoreboard objectives remove BHCDE
scoreboard objectives remove BHCDEpl
scoreboard objectives remove BHCDEsa
scoreboard objectives remove BHCDEti
scoreboard objectives remove BHCDEchi
scoreboard objectives remove BHCDEcvr
scoreboard objectives remove BHCDEgl
scoreboard objectives remove BHCDEcalc
scoreboard objectives remove BHCDEst
scoreboard teams remove BHCDEh
scoreboard teams remove BHCDEv
scoreboard teams remove BHCDEd_y
scoreboard teams remove BHCDEd_g
