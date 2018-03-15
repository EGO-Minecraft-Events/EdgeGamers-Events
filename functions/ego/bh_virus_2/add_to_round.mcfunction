execute @s[team=!BHVR2v] ~ ~ ~ function ego:bh_virus_2/clear_player
execute @s[team=!BHVR2v] ~ ~ ~ function ego:bh_virus_2/to_hider if @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=0,score_BHVR2st=2]
function ego:bh_virus_2/to_virus if @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=3,score_BHVR2st=3]
function ego:bh_virus_2/to_hider if @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=4,score_BHVR2st=6]
minecraft:tp @s[team=BHVR2h] -61.0 40 -69.0
minecraft:tp @s[team=BHVR2h] ~ ~0.1 ~
execute @s[team=BHVR2h] ~ ~ ~ function ego:bh_virus_2/give_disguise
minecraft:tp @s[team=BHVR2h] ~ ~-0.1 ~
scoreboard players set @s BHVR2pl 2
