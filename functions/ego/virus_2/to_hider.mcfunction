clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 763826195
scoreboard teams join VR2h @s
function ego:virus_2/tp_to_spawn if @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=0,score_VR2st=2]
