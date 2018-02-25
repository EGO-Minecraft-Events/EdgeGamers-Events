scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=525124045,score_FLgam=525124045] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MMH","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind Hell","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 525124045"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind Hell","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind Hell","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 525124045"}},{"text":" has stopped!","color":"red"}]}
scoreboard players reset * HOST
gamerule doTileDrops false
function ego:mastermind_hell/clear_lanes
function ego:mastermind_hell/open_doors
execute @a[m=2,score_MMHpl_min=1] ~ ~ ~ function ego:mastermind_hell/full_reset_player
scoreboard objectives remove MMH
scoreboard objectives remove MMHpl
scoreboard objectives remove MMHcl
scoreboard objectives remove MMHst
scoreboard objectives remove MMHec
scoreboard objectives remove MMHrn
scoreboard objectives remove MMHgn
scoreboard objectives remove MMHign
scoreboard objectives remove MMHbi
scoreboard objectives remove MMHca
scoreboard objectives remove MMHra
scoreboard objectives remove MMHna
scoreboard teams remove MMHblack
scoreboard teams remove MMHred
scoreboard teams remove MMHblue
scoreboard teams remove MMHgreen
scoreboard teams remove MMHgray
scoreboard teams remove MMHgold
scoreboard teams remove MMHaqua
scoreboard teams remove MMHwhite
kill @e[tag=MMHEntity]
