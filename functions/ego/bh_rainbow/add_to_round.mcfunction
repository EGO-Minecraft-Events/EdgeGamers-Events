execute @s[team=!BHRAv] ~ ~ ~ function ego:bh_rainbow/clear_player
execute @s[team=!BHRAv] ~ ~ ~ function ego:bh_rainbow/to_hider if @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=0,score_BHRAst=2]
function ego:bh_rainbow/to_virus if @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=3,score_BHRAst=3]
function ego:bh_rainbow/to_hider if @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=4,score_BHRAst=6]
minecraft:tp @s[team=BHRAh] -1152 7 -80
minecraft:tp @s[team=BHRAh] ~ ~0.1 ~
execute @s[team=BHRAh] ~ ~ ~ function ego:bh_rainbow/give_disguise
minecraft:tp @s[team=BHRAh] ~ ~-0.1 ~
scoreboard players set @s BHRApl 2
