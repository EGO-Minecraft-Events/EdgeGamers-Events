clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1498681551
scoreboard teams join BHCDEh @s
function ego:bh_castle_de_emmy/tp_to_spawn if @e[type=armor_stand,tag=BHCDEStand,score_BHCDEst_min=0,score_BHCDEst=2]
