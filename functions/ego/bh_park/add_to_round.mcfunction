execute @s[team=!BHPv] ~ ~ ~ function ego:bh_park/clear_player
execute @s[team=!BHPv] ~ ~ ~ function ego:bh_park/to_hider if @e[type=armor_stand,tag=BHPStand,score_BHPst_min=0,score_BHPst=2]
function ego:bh_park/to_virus if @e[type=armor_stand,tag=BHPStand,score_BHPst_min=3,score_BHPst=3]
function ego:bh_park/to_hider if @e[type=armor_stand,tag=BHPStand,score_BHPst_min=4,score_BHPst=6]
minecraft:tp @s[team=BHPh] -1247 8 -230
minecraft:tp @s[team=BHPh] ~ ~0.1 ~
execute @s[team=BHPh] ~ ~ ~ function ego:bh_park/give_disguise
minecraft:tp @s[team=BHPh] ~ ~-0.1 ~
scoreboard players set @s BHPpl 2
