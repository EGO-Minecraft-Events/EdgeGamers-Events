clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1807172851
scoreboard teams join BHMh @s
function ego:bh_mastermind/tp_to_spawn if @e[type=armor_stand,tag=BHMStand,score_BHMst_min=0,score_BHMst=2]
