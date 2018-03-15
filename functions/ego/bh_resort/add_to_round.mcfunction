execute @s[team=!BHREv] ~ ~ ~ function ego:bh_resort/clear_player
execute @s[team=!BHREv] ~ ~ ~ function ego:bh_resort/to_hider if @e[type=armor_stand,tag=BHREStand,score_BHREst_min=0,score_BHREst=2]
function ego:bh_resort/to_virus if @e[type=armor_stand,tag=BHREStand,score_BHREst_min=3,score_BHREst=3]
function ego:bh_resort/to_hider if @e[type=armor_stand,tag=BHREStand,score_BHREst_min=4,score_BHREst=6]
minecraft:tp @s[team=BHREh] -1420 66 -36 145 0
minecraft:tp @s[team=BHREh] ~ ~0.1 ~
execute @s[team=BHREh] ~ ~ ~ function ego:bh_resort/give_disguise
minecraft:tp @s[team=BHREh] ~ ~-0.1 ~
scoreboard players set @s BHREpl 2
