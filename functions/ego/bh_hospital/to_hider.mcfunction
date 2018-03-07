clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1159673785
scoreboard teams join BHHh @s
function ego:bh_hospital/tp_to_spawn if @e[type=armor_stand,tag=BHHStand,score_BHHst_min=0,score_BHHst=2]
