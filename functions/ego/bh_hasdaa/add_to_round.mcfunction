execute @s[team=!BHHDv] ~ ~ ~ function ego:bh_hasdaa/clear_player
execute @s[team=!BHHDv] ~ ~ ~ function ego:bh_hasdaa/to_hider if @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=0,score_BHHDst=2]
function ego:bh_hasdaa/to_virus if @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=3,score_BHHDst=3]
function ego:bh_hasdaa/to_hider if @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=4,score_BHHDst=6]
minecraft:tp @s[team=BHHDh] -1103 7 -35 -90 0
minecraft:tp @s[team=BHHDh] ~ ~0.1 ~
execute @s[team=BHHDh] ~ ~ ~ function ego:bh_hasdaa/give_disguise
minecraft:tp @s[team=BHHDh] ~ ~-0.1 ~
scoreboard players set @s BHHDpl 2
