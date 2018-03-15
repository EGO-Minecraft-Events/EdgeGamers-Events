execute @s[team=!BHMMv] ~ ~ ~ function ego:bh_mastermind/clear_player
execute @s[team=!BHMMv] ~ ~ ~ function ego:bh_mastermind/to_hider if @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=0,score_BHMMst=2]
function ego:bh_mastermind/to_virus if @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=3,score_BHMMst=3]
function ego:bh_mastermind/to_hider if @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=4,score_BHMMst=6]
minecraft:tp @s[team=BHMMh] -1177 21 -273
minecraft:tp @s[team=BHMMh] ~ ~0.1 ~
execute @s[team=BHMMh] ~ ~ ~ function ego:bh_mastermind/give_disguise
minecraft:tp @s[team=BHMMh] ~ ~-0.1 ~
scoreboard players set @s BHMMpl 2
