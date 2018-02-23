scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=333805818,score_FLgam=333805818] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"AD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Anvil Drop","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":" has stopped!","color":"red"}]}
execute @a[score_ADpl_min=0,m=2] ~ ~ ~ function ego:anvil_drop/full_reset_player
scoreboard objectives remove AD
scoreboard objectives remove ADpe1
scoreboard objectives remove ADpe2
scoreboard objectives remove ADpe3
scoreboard objectives remove ADiti1
scoreboard objectives remove ADiti2
scoreboard objectives remove ADiti3
scoreboard objectives remove ADti
scoreboard objectives remove ADti1
scoreboard objectives remove ADti2
scoreboard objectives remove ADti3
scoreboard objectives remove ADpl
scoreboard objectives remove ADst
scoreboard objectives remove ADdp
scoreboard objectives remove ADcl
scoreboard teams remove AD
scoreboard teams remove ADd_y
kill @e[tag=ADEntity]
kill @e[x=-38,y=0,z=76,dx=22,dy=35,dz=22,type=falling_block]
fill -33 3 81 -21 13 93 air 0 replace anvil
function ego:anvil_drop/close_doors
