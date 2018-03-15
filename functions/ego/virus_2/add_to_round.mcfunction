execute @s[team=!VR2v] ~ ~ ~ function ego:virus_2/clear_player
execute @s[team=!VR2v] ~ ~ ~ function ego:virus_2/to_hider if @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=0,score_VR2st=2]
function ego:virus_2/to_virus if @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=3,score_VR2st=3]
function ego:virus_2/to_hider if @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=4,score_VR2st=6]
scoreboard players set @s VR2pl 2
