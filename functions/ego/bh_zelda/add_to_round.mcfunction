execute @s[team=!BHZv] ~ ~ ~ function ego:bh_zelda/clear_player
execute @s[team=!BHZv] ~ ~ ~ function ego:bh_zelda/to_hider if @e[type=armor_stand,tag=BHZStand,score_BHZst_min=0,score_BHZst=2]
function ego:bh_zelda/to_virus if @e[type=armor_stand,tag=BHZStand,score_BHZst_min=3,score_BHZst=3]
function ego:bh_zelda/to_hider if @e[type=armor_stand,tag=BHZStand,score_BHZst_min=4,score_BHZst=6]
minecraft:tp @s[team=BHZh] -1169 7 -184 180 0
minecraft:tp @s[team=BHZh] ~ ~0.1 ~
execute @s[team=BHZh] ~ ~ ~ function ego:bh_zelda/give_disguise
minecraft:tp @s[team=BHZh] ~ ~-0.1 ~
scoreboard players set @s BHZpl 2
