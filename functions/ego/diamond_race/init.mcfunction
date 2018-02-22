function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 878514327
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=206,y=4,z=-57,dx=49,dy=100,dz=39] gSA 1
scoreboard objectives add DR dummy Diamond Race
scoreboard objectives setdisplay sidebar DR
scoreboard players set /spawn DR 99
scoreboard objectives add DRcd dummy Diamond Race Countdown
scoreboard objectives add DRpl dummy Diamond Race Player List
scoreboard teams add DRr Diamond Race
scoreboard teams option DRr color aqua
scoreboard teams option DRr seeFriendlyInvisibles true
scoreboard teams option DRr collisionRule never
scoreboard teams option DRr friendlyfire false
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["DR_cd"]}
scoreboard teams join DRr /spawn
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DR","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Diamond Race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 878514327"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Diamond Race","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Diamond Race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 878514327"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 878514327
