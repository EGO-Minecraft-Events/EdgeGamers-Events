clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 498683800
scoreboard teams join BHMMh @s
function ego:bh_mastermind/tp_to_spawn if @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=0,score_BHMMst=2]
