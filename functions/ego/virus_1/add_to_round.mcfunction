execute @s[team=!VR1v] ~ ~ ~ function ego:virus_1/clear_player
execute @s[team=!VR1v] ~ ~ ~ function ego:virus_1/to_hider if @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=0,score_VR1st=2]
function ego:virus_1/to_virus if @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=3,score_VR1st=3]
function ego:virus_1/to_hider if @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=4,score_VR1st=6]
scoreboard players set @s VR1pl 2
