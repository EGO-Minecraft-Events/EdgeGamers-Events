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
summon area_effect_cloud ~ ~0.01 ~ {Duration:2147483647,CustomName:"Apple",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.02 ~ {Duration:2147483647,CustomName:"Avocado",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.03 ~ {Duration:2147483647,CustomName:"Banana",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.04 ~ {Duration:2147483647,CustomName:"Banana Split",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.05 ~ {Duration:2147483647,CustomName:"Big Mac",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.06 ~ {Duration:2147483647,CustomName:"Burnt Toast",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.07 ~ {Duration:2147483647,CustomName:"Butter",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.08 ~ {Duration:2147483647,CustomName:"Cake",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.09 ~ {Duration:2147483647,CustomName:"Candy",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.1 ~ {Duration:2147483647,CustomName:"Cat Fish",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.11 ~ {Duration:2147483647,CustomName:"Cheese",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.12 ~ {Duration:2147483647,CustomName:"Cheeseburger",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.13 ~ {Duration:2147483647,CustomName:"Cherry",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.14 ~ {Duration:2147483647,CustomName:"Chicken",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.15 ~ {Duration:2147483647,CustomName:"Chicken Leg",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.16 ~ {Duration:2147483647,CustomName:"Chocolate Bar",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.17 ~ {Duration:2147483647,CustomName:"Chocolate Cake",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.18 ~ {Duration:2147483647,CustomName:"Chocolate Chip Cookie",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.19 ~ {Duration:2147483647,CustomName:"Coffee",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.2 ~ {Duration:2147483647,CustomName:"Cookie",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.21 ~ {Duration:2147483647,CustomName:"Corgi",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.22 ~ {Duration:2147483647,CustomName:"Corn",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.23 ~ {Duration:2147483647,CustomName:"Cotton Candy",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.24 ~ {Duration:2147483647,CustomName:"Cupcake",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.25 ~ {Duration:2147483647,CustomName:"Egg",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.26 ~ {Duration:2147483647,CustomName:"Fish",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.27 ~ {Duration:2147483647,CustomName:"Fish and Chips",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.28 ~ {Duration:2147483647,CustomName:"Glass of Water",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.29 ~ {Duration:2147483647,CustomName:"Grilled Cheese",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.3 ~ {Duration:2147483647,CustomName:"Hamburger",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.31 ~ {Duration:2147483647,CustomName:"Honey",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.32 ~ {Duration:2147483647,CustomName:"Hot Dog",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.33 ~ {Duration:2147483647,CustomName:"Ice Cream Cone",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.34 ~ {Duration:2147483647,CustomName:"Lamb Chop",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.35 ~ {Duration:2147483647,CustomName:"Lollipop",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.36 ~ {Duration:2147483647,CustomName:"M&M",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.37 ~ {Duration:2147483647,CustomName:"Maple Syrup",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.38 ~ {Duration:2147483647,CustomName:"Mashed Potatoes and Gravy",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.39 ~ {Duration:2147483647,CustomName:"Muffin",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.4 ~ {Duration:2147483647,CustomName:"Nachos and Wine",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.41 ~ {Duration:2147483647,CustomName:"Pancakes",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.42 ~ {Duration:2147483647,CustomName:"Pb&J",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.43 ~ {Duration:2147483647,CustomName:"Peppermint Candy",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.44 ~ {Duration:2147483647,CustomName:"Pie",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.45 ~ {Duration:2147483647,CustomName:"Pocky",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.46 ~ {Duration:2147483647,CustomName:"Popcorn",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.47 ~ {Duration:2147483647,CustomName:"Poptart",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.48 ~ {Duration:2147483647,CustomName:"Radish",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.49 ~ {Duration:2147483647,CustomName:"Ramen",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.5 ~ {Duration:2147483647,CustomName:"Skittles",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.51 ~ {Duration:2147483647,CustomName:"Soda",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.52 ~ {Duration:2147483647,CustomName:"Soup",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.53 ~ {Duration:2147483647,CustomName:"Spaghetti and Meatballs",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.54 ~ {Duration:2147483647,CustomName:"Spoonful of Sugar",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.55 ~ {Duration:2147483647,CustomName:"Strawberry",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.56 ~ {Duration:2147483647,CustomName:"Strawberry Milkshake",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.57 ~ {Duration:2147483647,CustomName:"Strawberry Short Cake",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.58 ~ {Duration:2147483647,CustomName:"Sushi",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.59 ~ {Duration:2147483647,CustomName:"Taco",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.6 ~ {Duration:2147483647,CustomName:"Tea",Tags:["PCEntity","PCTopic"]}
summon area_effect_cloud ~ ~0.61 ~ {Duration:2147483647,CustomName:"Tomato",Tags:["PCEntity","PCTopic"]}
scoreboard teams join PC @e[type=area_effect_cloud,tag=PCTopic]
scoreboard teams join PCd_y Time_Elapsed
scoreboard players add @e[type=area_effect_cloud,tag=PCTopic] PCrd 0
setblock 158 1 180 air 0
title @a title {"text":"Tonight's Theme:","color":"dark_aqua"}
title @a subtitle {"text":"Food!","color":"gold","bold":"true"}
tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Tonight's Theme: ","color":"dark_aqua"},{"text":"Food!","color":"gold","bold":"true"}]}
scoreboard players set @s HOST 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"text":"P","color":"light_purple","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"i","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"c","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"t","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"i","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"o","color":"dark_green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"n","color":"blue","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"blue"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"a","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"r","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"y","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1301307747
