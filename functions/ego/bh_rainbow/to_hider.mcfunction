clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 658982564
scoreboard teams join BHRAh @s
function ego:bh_rainbow/tp_to_spawn if @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=0,score_BHRAst=2]
