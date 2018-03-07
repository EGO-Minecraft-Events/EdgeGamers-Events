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
scoreboard teams add PC Pictionary
scoreboard teams option PC color green
scoreboard teams option PC friendlyfire false
scoreboard teams option PC collisionRule never
scoreboard teams add PCPCd_y Pictionary Display yellow
scoreboard teams option PCPCd_y color yellow
summon armor_stand ~ ~ ~ {Tags:["PCEntity","PCStand"],Invulnerable:1,NoGravity:1,Invisible:1,Marker:1b}
summon area_effect_cloud ~ ~0.01 ~ {Duration:2147483647,CustomName:"101 Dalmations",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.02 ~ {Duration:2147483647,CustomName:"A Bug's Life",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.03 ~ {Duration:2147483647,CustomName:"Aladdin",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.04 ~ {Duration:2147483647,CustomName:"Alice",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.05 ~ {Duration:2147483647,CustomName:"Alice in Wonderland",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.06 ~ {Duration:2147483647,CustomName:"Ariel",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.07 ~ {Duration:2147483647,CustomName:"Bambi",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.08 ~ {Duration:2147483647,CustomName:"Beauty and the Beast",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.09 ~ {Duration:2147483647,CustomName:"Bolt",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.1 ~ {Duration:2147483647,CustomName:"Brave",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.11 ~ {Duration:2147483647,CustomName:"Buzz Lightyear",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.12 ~ {Duration:2147483647,CustomName:"Captain Hook",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.13 ~ {Duration:2147483647,CustomName:"Cars",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.14 ~ {Duration:2147483647,CustomName:"Chicken Little",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.15 ~ {Duration:2147483647,CustomName:"Cinderella",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.16 ~ {Duration:2147483647,CustomName:"Donald Duck",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.17 ~ {Duration:2147483647,CustomName:"Dumbo",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.18 ~ {Duration:2147483647,CustomName:"Dusty Crophopper",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.19 ~ {Duration:2147483647,CustomName:"Fantasia",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.2 ~ {Duration:2147483647,CustomName:"Finding Nemo",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.21 ~ {Duration:2147483647,CustomName:"Frozen",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.22 ~ {Duration:2147483647,CustomName:"Goofy",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.23 ~ {Duration:2147483647,CustomName:"Hercules",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.24 ~ {Duration:2147483647,CustomName:"Lady and the Tramp",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.25 ~ {Duration:2147483647,CustomName:"Lilo and Stitch",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.26 ~ {Duration:2147483647,CustomName:"Mickey Mouse",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.27 ~ {Duration:2147483647,CustomName:"Minnie Mouse",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.28 ~ {Duration:2147483647,CustomName:"Monsters Inc.",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.29 ~ {Duration:2147483647,CustomName:"Mr. Incredible",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.3 ~ {Duration:2147483647,CustomName:"Mulan",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.31 ~ {Duration:2147483647,CustomName:"Peter Pan",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.32 ~ {Duration:2147483647,CustomName:"Pinocchio",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.33 ~ {Duration:2147483647,CustomName:"Planes",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.34 ~ {Duration:2147483647,CustomName:"Pluto",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.35 ~ {Duration:2147483647,CustomName:"Pocahontas",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.36 ~ {Duration:2147483647,CustomName:"Ralph",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.37 ~ {Duration:2147483647,CustomName:"Robin Hood",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.38 ~ {Duration:2147483647,CustomName:"Simba",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.39 ~ {Duration:2147483647,CustomName:"Sleeping Beauty",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.4 ~ {Duration:2147483647,CustomName:"Snow White",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.41 ~ {Duration:2147483647,CustomName:"Sully",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.42 ~ {Duration:2147483647,CustomName:"Tangled",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.43 ~ {Duration:2147483647,CustomName:"Tarzan",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.44 ~ {Duration:2147483647,CustomName:"The Aristocats",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.45 ~ {Duration:2147483647,CustomName:"The Beast",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.46 ~ {Duration:2147483647,CustomName:"The Emperor's New Groove",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.47 ~ {Duration:2147483647,CustomName:"The Fox and the Hound",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.48 ~ {Duration:2147483647,CustomName:"The Hunchback of Notre Dame",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.49 ~ {Duration:2147483647,CustomName:"The Incredibles",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.5 ~ {Duration:2147483647,CustomName:"The Jungle Book",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.51 ~ {Duration:2147483647,CustomName:"The Lion King",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.52 ~ {Duration:2147483647,CustomName:"The Little Mermaid",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.53 ~ {Duration:2147483647,CustomName:"The Nightmare Before Christmas",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.54 ~ {Duration:2147483647,CustomName:"The Princess and the Frog",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.55 ~ {Duration:2147483647,CustomName:"The Rescuers",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.56 ~ {Duration:2147483647,CustomName:"The Sword and the Stone",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.57 ~ {Duration:2147483647,CustomName:"Toy Story",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.58 ~ {Duration:2147483647,CustomName:"Up",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.59 ~ {Duration:2147483647,CustomName:"Ursula",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.6 ~ {Duration:2147483647,CustomName:"Wall-E",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.61 ~ {Duration:2147483647,CustomName:"Wreck it Ralph",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.62 ~ {Duration:2147483647,CustomName:"corgi",Tags:["PCEntity","PCTopic"]}
scoreboard teams join PC @e[type=area_effect_cloud,tag=PCTopic]
scoreboard teams join PCd_y Time_Elapsed
scoreboard players add @e[type=area_effect_cloud,tag=PCTopic] PCrd 0
setblock 158 1 180 air 0
title @a title {"text":"Tonight's Theme:","color":"dark_aqua"}
title @a subtitle {"text":"Disney!","color":"gold","bold":"true"}
tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Tonight's Theme: ","color":"dark_aqua"},{"text":"Disney!","color":"gold","bold":"true"}]}
scoreboard players set @s HOST 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"text":"P","color":"light_purple","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"i","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"c","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"t","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"i","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"o","color":"dark_green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"n","color":"blue","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"blue"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"a","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"r","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"y","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1301307747
