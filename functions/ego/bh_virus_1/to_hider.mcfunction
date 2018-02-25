clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 8130627
scoreboard teams join BHVR1h @s
function ego:bh_virus_1/tp_to_spawn if @e[type=armor_stand,tag=BHVR1Stand,score_BHVR1st_min=0,score_BHVR1st=2]
