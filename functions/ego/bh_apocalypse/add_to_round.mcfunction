execute @s[team=!BHAv] ~ ~ ~ function ego:bh_apocalypse/clear_player
execute @s[team=!BHAv] ~ ~ ~ function ego:bh_apocalypse/to_hider if @e[type=armor_stand,tag=BHAStand,score_BHAst_min=0,score_BHAst=2]
function ego:bh_apocalypse/to_virus if @e[type=armor_stand,tag=BHAStand,score_BHAst_min=3,score_BHAst=3]
function ego:bh_apocalypse/to_hider if @e[type=armor_stand,tag=BHAStand,score_BHAst_min=4,score_BHAst=6]
minecraft:tp @s[team=BHAh] -1544 7 -52
minecraft:tp @s[team=BHAh] ~ ~0.1 ~
execute @s[team=BHAh] ~ ~ ~ function ego:bh_apocalypse/give_disguise
minecraft:tp @s[team=BHAh] ~ ~-0.1 ~
scoreboard players set @s BHApl 2
