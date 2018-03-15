execute @s[team=!BHASVv] ~ ~ ~ function ego:bh_a_small_village/clear_player
execute @s[team=!BHASVv] ~ ~ ~ function ego:bh_a_small_village/to_hider if @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=0,score_BHASVst=2]
function ego:bh_a_small_village/to_virus if @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=3,score_BHASVst=3]
function ego:bh_a_small_village/to_hider if @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=4,score_BHASVst=6]
minecraft:tp @s[team=BHASVh] -1423 7 -169
minecraft:tp @s[team=BHASVh] ~ ~0.1 ~
execute @s[team=BHASVh] ~ ~ ~ function ego:bh_a_small_village/give_disguise
minecraft:tp @s[team=BHASVh] ~ ~-0.1 ~
scoreboard players set @s BHASVpl 2
