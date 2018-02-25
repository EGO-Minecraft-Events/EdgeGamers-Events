scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1217546713,score_FLgam=1217546713] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":" has stopped!","color":"red"}]}
scoreboard players reset * HOST
gamerule doTileDrops false
function ego:mastermind/clear_lanes
function ego:mastermind/open_doors
execute @a[m=2,score_MMpl_min=1] ~ ~ ~ function ego:mastermind/full_reset_player
scoreboard objectives remove MM
scoreboard objectives remove MMpl
scoreboard objectives remove MMcl
scoreboard objectives remove MMst
scoreboard objectives remove MMec
scoreboard objectives remove MMrn
scoreboard objectives remove MMgn
scoreboard objectives remove MMign
scoreboard objectives remove MMbi
scoreboard objectives remove MMca
scoreboard objectives remove MMra
scoreboard objectives remove MMna
scoreboard teams remove MMred
scoreboard teams remove MMlime
scoreboard teams remove MMcyan
scoreboard teams remove MMmagenta
scoreboard teams remove MMpink
scoreboard teams remove MMorange
scoreboard teams remove MMwhite
kill @e[tag=MMEntity]
