scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1478269764,score_FLgam=1478269764] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BH Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1478269764"}},{"text":"]","color":"gray"},{"text":": "},{"text":"BH Virus 2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BH Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1478269764"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHVR2pl_min=1,score_BHVR2pl=1,m=2] ~ ~ ~ function ego:bh_virus_2/full_reset_player
kill @e[type=armor_stand,tag=BHVR2Entity]
fill -64 63 -67 -59 63 -72 redstone_block 0 replace stonebrick 0
fill -65 60 -66 -58 60 -73 redstone_block 0 replace stonebrick 0
bd undisguiseall
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
