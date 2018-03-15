execute @s[team=!BHMVv] ~ ~ ~ function ego:bh_mushroom_village/clear_player
execute @s[team=!BHMVv] ~ ~ ~ function ego:bh_mushroom_village/to_hider if @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=0,score_BHMVst=2]
function ego:bh_mushroom_village/to_virus if @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=3,score_BHMVst=3]
function ego:bh_mushroom_village/to_hider if @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=4,score_BHMVst=6]
minecraft:tp @s[team=BHMVh] -1075 23 -196
minecraft:tp @s[team=BHMVh] ~ ~0.1 ~
execute @s[team=BHMVh] ~ ~ ~ function ego:bh_mushroom_village/give_disguise
minecraft:tp @s[team=BHMVh] ~ ~-0.1 ~
scoreboard players set @s BHMVpl 2
