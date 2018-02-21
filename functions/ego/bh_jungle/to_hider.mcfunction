clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1023416591
scoreboard teams join BHJh @s
function ego:bh_jungle/tp_to_spawn if @e[type=armor_stand,tag=BHJStand,score_BHJst_min=0,score_BHJst=2]
