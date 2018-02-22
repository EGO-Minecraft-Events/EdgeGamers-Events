function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 2140645621
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=18,y=11,z=-207,dx=49,dy=20,dz=45] gSA 1
scoreboard objectives add DirtR dummy Dirt Race
scoreboard objectives setdisplay sidebar DirtR
scoreboard players set /spawn DirtR 99
scoreboard objectives add DirtRcd dummy Dirt Race Countdown
scoreboard objectives add DirtRpl dummy Dirt Race Player List
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard objectives add DirtRbc dummy Dirt Race Broadcast
scoreboard objectives add DirtRcp dummy Dirt Race Checkpoints
scoreboard objectives add DirtRswim stat.swimOneCm Dirt Race Detect Swim
scoreboard objectives add DirtRdive stat.diveOneCm Dirt Race Detect Dive
scoreboard teams add DirtRr Dirt Race
scoreboard teams option DirtRr color gray
scoreboard teams option DirtRr seeFriendlyInvisibles true
scoreboard teams option DirtRr collisionRule never
scoreboard teams option DirtRr friendlyfire false
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["DirtR_cd"]}
scoreboard teams join DirtRr /spawn
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Dirt Race","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 2140645621
