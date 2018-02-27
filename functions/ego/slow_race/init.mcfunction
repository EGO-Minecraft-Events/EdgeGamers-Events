function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 720573389
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=21,y=4,z=-88,dx=61,dy=100,dz=21] gSA 1
scoreboard objectives add SR dummy Slow Race
scoreboard objectives setdisplay sidebar SR
scoreboard players set /spawn SR 99
scoreboard objectives add SRcd dummy Slow Race Countdown
scoreboard objectives add SRpl dummy Slow Race Player List
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard objectives add SRbc dummy Slow Race Broadcast
scoreboard teams add SRr Slow Race
scoreboard teams option SRr color gray
scoreboard teams option SRr seeFriendlyInvisibles true
scoreboard teams option SRr collisionRule never
scoreboard teams option SRr friendlyfire false
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["SR_cd"]}
scoreboard teams join SRr /spawn
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"SR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Slow Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 720573389"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Slow Race","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Slow Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 720573389"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 720573389
