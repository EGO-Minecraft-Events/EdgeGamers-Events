execute @s[team=!BHHv] ~ ~ ~ function ego:bh_hospital/clear_player
execute @s[team=!BHHv] ~ ~ ~ function ego:bh_hospital/to_hider if @e[type=armor_stand,tag=BHHStand,score_BHHst_min=0,score_BHHst=2]
function ego:bh_hospital/to_virus if @e[type=armor_stand,tag=BHHStand,score_BHHst_min=3,score_BHHst=3]
function ego:bh_hospital/to_hider if @e[type=armor_stand,tag=BHHStand,score_BHHst_min=4,score_BHHst=6]
minecraft:tp @s[team=BHHh] -1067 7 -236 145 0
minecraft:tp @s[team=BHHh] ~ ~0.1 ~
execute @s[team=BHHh] ~ ~ ~ function ego:bh_hospital/give_disguise
minecraft:tp @s[team=BHHh] ~ ~-0.1 ~
scoreboard players set @s BHHpl 2
