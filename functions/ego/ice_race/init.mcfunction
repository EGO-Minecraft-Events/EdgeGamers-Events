function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 227577150
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=34,y=2,z=-64,dx=141,dy=69,dz=43] gSA 1
scoreboard objectives add IR dummy Ice race
scoreboard objectives setdisplay sidebar IR
scoreboard players set /spawn IR 99
scoreboard objectives add IRcd dummy Ice race Countdown
scoreboard objectives add IRpl dummy Ice race Player List
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard objectives add IRbc dummy Ice race Broadcast
scoreboard teams add IRr Ice race
scoreboard teams option IRr color aqua
scoreboard teams option IRr seeFriendlyInvisibles true
scoreboard teams option IRr collisionRule never
scoreboard teams option IRr friendlyfire false
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["IR_cd"]}
scoreboard teams join IRr /spawn
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"IR","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Ice race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 227577150"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Ice race","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Ice race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 227577150"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 227577150
