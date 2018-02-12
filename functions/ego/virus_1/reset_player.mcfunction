clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] SPbk 1561350378
scoreboard players set @s FLtp 1561350378
scoreboard players set @s VR1pl 1
function ego:virus_1/to_hider if @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=0,score_VR1st=2]
function ego:virus_1/to_virus if @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=3,score_VR1st=3]
