scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=586508005,score_FLgam=586508005] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"TPL3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The Pit 3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":" has stopped!","color":"red"}]}
execute @a[m=2,score_TPpl_min=1] ~ ~ ~ function ego:the_pit_3/full_reset_player
scoreboard objectives remove TP
scoreboard objectives remove TPti
scoreboard objectives remove TPcl
scoreboard objectives remove TPaf
scoreboard objectives remove TPwe
scoreboard objectives remove TPst
scoreboard objectives remove TPdg
scoreboard objectives remove TPiat
scoreboard objectives remove TPiwt
scoreboard objectives remove TPpl
scoreboard teams remove TP
scoreboard teams remove TPd_y
scoreboard teams remove TPd_g
setblock -80 7 174 redstone_block
setblock -80 7 174 air
kill @e[tag=TPEntity]
