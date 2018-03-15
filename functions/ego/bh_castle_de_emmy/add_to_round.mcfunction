execute @s[team=!BHCDEv] ~ ~ ~ function ego:bh_castle_de_emmy/clear_player
execute @s[team=!BHCDEv] ~ ~ ~ function ego:bh_castle_de_emmy/to_hider if @e[type=armor_stand,tag=BHCDEStand,score_BHCDEst_min=0,score_BHCDEst=2]
function ego:bh_castle_de_emmy/to_virus if @e[type=armor_stand,tag=BHCDEStand,score_BHCDEst_min=3,score_BHCDEst=3]
function ego:bh_castle_de_emmy/to_hider if @e[type=armor_stand,tag=BHCDEStand,score_BHCDEst_min=4,score_BHCDEst=6]
minecraft:tp @s[team=BHCDEh] -1616 4 -59
minecraft:tp @s[team=BHCDEh] ~ ~0.1 ~
execute @s[team=BHCDEh] ~ ~ ~ function ego:bh_castle_de_emmy/give_disguise
minecraft:tp @s[team=BHCDEh] ~ ~-0.1 ~
scoreboard players set @s BHCDEpl 2
