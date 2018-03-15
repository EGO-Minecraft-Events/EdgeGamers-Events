execute @s[team=!BHVR1v] ~ ~ ~ function ego:bh_virus_1/clear_player
execute @s[team=!BHVR1v] ~ ~ ~ function ego:bh_virus_1/to_hider if @e[type=armor_stand,tag=BHVR1Stand,score_BHVR1st_min=0,score_BHVR1st=2]
function ego:bh_virus_1/to_virus if @e[type=armor_stand,tag=BHVR1Stand,score_BHVR1st_min=3,score_BHVR1st=3]
function ego:bh_virus_1/to_hider if @e[type=armor_stand,tag=BHVR1Stand,score_BHVR1st_min=4,score_BHVR1st=6]
minecraft:tp @s[team=BHVR1h] -69.0 38 -225.0
minecraft:tp @s[team=BHVR1h] ~ ~0.1 ~
execute @s[team=BHVR1h] ~ ~ ~ function ego:bh_virus_1/give_disguise
minecraft:tp @s[team=BHVR1h] ~ ~-0.1 ~
scoreboard players set @s BHVR1pl 2
