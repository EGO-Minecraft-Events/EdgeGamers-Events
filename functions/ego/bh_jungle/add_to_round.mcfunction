execute @s[team=!BHJv] ~ ~ ~ function ego:bh_jungle/clear_player
execute @s[team=!BHJv] ~ ~ ~ function ego:bh_jungle/to_hider if @e[type=armor_stand,tag=BHJStand,score_BHJst_min=0,score_BHJst=2]
function ego:bh_jungle/to_virus if @e[type=armor_stand,tag=BHJStand,score_BHJst_min=3,score_BHJst=3]
function ego:bh_jungle/to_hider if @e[type=armor_stand,tag=BHJStand,score_BHJst_min=4,score_BHJst=6]
minecraft:tp @s[team=BHJh] -1085.0 10 -120.0
minecraft:tp @s[team=BHJh] ~ ~0.1 ~
execute @s[team=BHJh] ~ ~ ~ function ego:bh_jungle/give_disguise
minecraft:tp @s[team=BHJh] ~ ~-0.1 ~
scoreboard players set @s BHJpl 2
