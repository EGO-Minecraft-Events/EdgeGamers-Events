scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1027889765,score_FLgam=1027889765] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHASV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"A Small Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1027889765"}},{"text":"]","color":"gray"},{"text":": "},{"text":"A Small Village","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"A Small Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1027889765"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHASVpl_min=1,score_BHASVpl=1,m=2] ~ ~ ~ function ego:bh_a_small_village/full_reset_player
kill @e[type=armor_stand,tag=BHASVEntity]
bd undisguiseall
scoreboard objectives remove BHASVprng
scoreboard objectives remove BHASV
scoreboard objectives remove BHASVpl
scoreboard objectives remove BHASVsa
scoreboard objectives remove BHASVti
scoreboard objectives remove BHASVchi
scoreboard objectives remove BHASVcvr
scoreboard objectives remove BHASVgl
scoreboard objectives remove BHASVcalc
scoreboard objectives remove BHASVst
scoreboard teams remove BHASVh
scoreboard teams remove BHASVv
scoreboard teams remove BHASVd_y
scoreboard teams remove BHASVd_g
