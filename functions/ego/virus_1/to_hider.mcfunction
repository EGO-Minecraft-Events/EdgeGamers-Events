clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1561350378
scoreboard teams join VR1h @s
function ego:virus_1/tp_to_spawn if @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=0,score_VR1st=2]
