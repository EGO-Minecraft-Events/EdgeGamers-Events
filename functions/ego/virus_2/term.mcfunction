scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1561350379,score_FLgam=1561350379] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"VR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1561350379"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Virus 2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1561350379"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_VR2pl_min=1,score_VR2pl=1,m=2] ~ ~ ~ function ego:virus_2/full_reset_player
kill @e[type=armor_stand,tag=VR2Entity]
scoreboard objectives remove VR2
scoreboard objectives remove VR2pl
scoreboard objectives remove VR2sa
scoreboard objectives remove VR2ti
scoreboard objectives remove VR2chi
scoreboard objectives remove VR2cvr
scoreboard objectives remove VR2gl
scoreboard objectives remove VR2calc
scoreboard objectives remove VR2st
scoreboard teams remove VR2h
scoreboard teams remove VR2v
scoreboard teams remove VR2d_y
scoreboard teams remove VR2d_g
