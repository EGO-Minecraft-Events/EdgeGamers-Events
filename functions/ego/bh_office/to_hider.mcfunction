clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 863633014
scoreboard teams join BHOh @s
function ego:bh_office/tp_to_spawn if @e[type=armor_stand,tag=BHOStand,score_BHOst_min=0,score_BHOst=2]
