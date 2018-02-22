function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 942958520
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=419,y=4,z=-47,dx=79,dy=40,dz=32] gSA 1
scoreboard objectives add SaltR dummy Salt Race
scoreboard objectives setdisplay sidebar SaltR
scoreboard players set /spawn SaltR 99
scoreboard objectives add SaltRcd dummy Salt Race Countdown
scoreboard objectives add SaltRpl dummy Salt Race Player List
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard objectives add SaltRbc dummy Salt Race Broadcast
scoreboard objectives add SaltRcp dummy Salt Race Checkpoints
scoreboard teams add SaltRr Salt Race
scoreboard teams option SaltRr color gray
scoreboard teams option SaltRr seeFriendlyInvisibles true
scoreboard teams option SaltRr collisionRule never
scoreboard teams option SaltRr friendlyfire false
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["SaltR_cd"]}
scoreboard teams join SaltRr /spawn
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"SaltR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Salt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 942958520"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Salt Race","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Salt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 942958520"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 942958520
