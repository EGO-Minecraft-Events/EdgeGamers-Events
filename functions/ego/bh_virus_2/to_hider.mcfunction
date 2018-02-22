clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1478269764
scoreboard teams join BHVR2h @s
function ego:bh_virus_2/tp_to_spawn if @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=0,score_BHVR2st=2]
