scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=98805618,score_FLgam=98805618] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 98805618"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Virus 2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 98805618"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHVR2pl_min=1,score_BHVR2pl=2,m=2] ~ ~ ~ function ego:bh_virus_2/full_reset_player
scoreboard players reset * HOST
kill @e[type=armor_stand,tag=BHVR2Entity]
scoreboard objectives remove BHVR2prng
scoreboard objectives remove BHVR2
scoreboard objectives remove BHVR2pl
scoreboard objectives remove BHVR2sa
scoreboard objectives remove BHVR2ti
scoreboard objectives remove BHVR2chi
scoreboard objectives remove BHVR2cvr
scoreboard objectives remove BHVR2gl
scoreboard objectives remove BHVR2calc
scoreboard objectives remove BHVR2st
scoreboard teams remove BHVR2h
scoreboard teams remove BHVR2v
scoreboard teams remove BHVR2d_y
scoreboard teams remove BHVR2d_g
