execute @s[team=!BHOv] ~ ~ ~ function ego:bh_old/clear_player
execute @s[team=!BHOv] ~ ~ ~ function ego:bh_old/to_hider if @e[type=armor_stand,tag=BHOStand,score_BHOst_min=0,score_BHOst=2]
function ego:bh_old/to_virus if @e[type=armor_stand,tag=BHOStand,score_BHOst_min=3,score_BHOst=3]
function ego:bh_old/to_hider if @e[type=armor_stand,tag=BHOStand,score_BHOst_min=4,score_BHOst=6]
minecraft:tp @s[team=BHOh] -1158.0 25 -135.0
minecraft:tp @s[team=BHOh] ~ ~0.1 ~
execute @s[team=BHOh] ~ ~ ~ function ego:bh_old/give_disguise
minecraft:tp @s[team=BHOh] ~ ~-0.1 ~
scoreboard players set @s BHOpl 2
