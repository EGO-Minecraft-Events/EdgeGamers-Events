function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 1061722156
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=32,y=4,z=-108,dx=48,dy=100,dz=15] gSA 1
scoreboard objectives add NR dummy Nether Race
scoreboard objectives setdisplay sidebar NR
scoreboard players set /spawn NR 99
scoreboard objectives add NRcd dummy Nether Race Countdown
scoreboard objectives add NRpl dummy Nether Race Player List
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard objectives add NRbc dummy Nether Race Broadcast
scoreboard objectives add NRcp dummy Nether Race Checkpoints
scoreboard teams add NRr Nether Race
scoreboard teams option NRr color red
scoreboard teams option NRr seeFriendlyInvisibles true
scoreboard teams option NRr collisionRule never
scoreboard teams option NRr friendlyfire false
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["NR_cd"]}
scoreboard teams join NRr /spawn
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"NR","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Nether Race","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1061722156"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Nether Race","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Nether Race","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1061722156"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1061722156
