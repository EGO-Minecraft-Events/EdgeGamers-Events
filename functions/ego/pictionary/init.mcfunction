function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 1301307747
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=110,y=3,z=148,dx=64,dy=15,dz=64] gSA 1
scoreboard objectives add constants dummy
scoreboard players set 20 constants 20
scoreboard objectives add PC dummy Pictionary
scoreboard objectives setdisplay sidebar PC
scoreboard objectives add PCti dummy Pictionary Timer
scoreboard objectives add PCst dummy Pictionary State
scoreboard objectives add PCpl dummy Pictionary Player List
scoreboard objectives add PCrd dummy Pictionary Random Choose
scoreboard objectives add PCcl dummy Pictionary Calculations
scoreboard objectives add PCaf dummy Pictionary Affected Items
scoreboard objectives add PCtm dummy Pictionary Temp
scoreboard objectives add PCss dummy Pictionary Stop Selection
scoreboard teams add PC Pictionary
scoreboard teams option PC color green
scoreboard teams option PC friendlyfire false
scoreboard teams option PC collisionRule never
scoreboard teams add PCPCd_y Pictionary Display yellow
scoreboard teams option PCPCd_y color yellow
summon armor_stand ~ ~ ~ {Tags:["PCEntity","PCStand"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,CustomName:"guess(1)",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,CustomName:"guess(2)",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,CustomName:"guess(n)",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,CustomName:"theme",Tags:["PCEntity","PCTopic"]}
scoreboard teams join PC @e[type=area_effect_cloud,tag=PCTopic]
scoreboard teams join PCd_y Time_Elapsed
scoreboard players add @e[type=area_effect_cloud,tag=PCTopic] PCrd 0
setblock 158 1 180 air 0
title @a title {"text":"Tonight's Theme:","color":"dark_aqua"}
title @a subtitle {"text":"...","color":"gold","bold":"true"}
tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Tonight's Theme: ","color":"dark_aqua"},{"text":"...","color":"gold","bold":"true"}]}
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"text":"P","color":"light_purple","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"i","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"c","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"t","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"i","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"o","color":"dark_green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"n","color":"blue","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"blue"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"a","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"r","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"y","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1301307747
