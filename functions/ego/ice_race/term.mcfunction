scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=803738518,score_FLgam=803738518] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"IR","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Ice race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 803738518"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Ice race","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Ice race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 803738518"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_IRpl_min=1,score_IRpl=1,m=2] ~ ~ ~ function ego:ice_race/full_reset_player
scoreboard objectives remove IR
scoreboard objectives remove IRcd
scoreboard objectives remove IRpl
scoreboard objectives remove IRbc
scoreboard teams remove IRr
kill @e[type=area_effect_cloud,tag=IR_cd]
fill 66 34 -42 66 34 -48 redstone_block 0 replace stonebrick 0
fill 42 33 -31 42 33 -32 air
setblock 42 33 -28 air
setblock 42 33 -35 air
