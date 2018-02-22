scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1237719705,score_FLgam=1237719705] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BH Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1237719705"}},{"text":"]","color":"gray"},{"text":": "},{"text":"BH Virus 1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BH Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1237719705"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_BHVR1pl_min=1,score_BHVR1pl=1,m=2] ~ ~ ~ function ego:bh_virus_1/full_reset_player
kill @e[type=armor_stand,tag=BHVR1Entity]
fill -73 52 -222 -66 52 -229 redstone_block 0 replace stonebrick 0
fill -73 49 -229 -66 49 -222 redstone_block 0 replace stonebrick 0
bd undisguiseall
scoreboard objectives remove BHVR1prng
scoreboard objectives remove BHVR1
scoreboard objectives remove BHVR1pl
scoreboard objectives remove BHVR1sa
scoreboard objectives remove BHVR1ti
scoreboard objectives remove BHVR1chi
scoreboard objectives remove BHVR1cvr
scoreboard objectives remove BHVR1gl
scoreboard objectives remove BHVR1calc
scoreboard objectives remove BHVR1st
scoreboard teams remove BHVR1h
scoreboard teams remove BHVR1v
scoreboard teams remove BHVR1d_y
scoreboard teams remove BHVR1d_g
