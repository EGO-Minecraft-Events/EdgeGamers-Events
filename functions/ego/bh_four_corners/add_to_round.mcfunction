execute @s[team=!BHFCv] ~ ~ ~ function ego:bh_four_corners/clear_player
execute @s[team=!BHFCv] ~ ~ ~ function ego:bh_four_corners/to_hider if @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=0,score_BHFCst=2]
function ego:bh_four_corners/to_virus if @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=3,score_BHFCst=3]
function ego:bh_four_corners/to_hider if @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=4,score_BHFCst=6]
minecraft:tp @s[team=BHFCh] -1313 74 -235
minecraft:tp @s[team=BHFCh] ~ ~0.1 ~
execute @s[team=BHFCh] ~ ~ ~ function ego:bh_four_corners/give_disguise
minecraft:tp @s[team=BHFCh] ~ ~-0.1 ~
scoreboard players set @s BHFCpl 2
