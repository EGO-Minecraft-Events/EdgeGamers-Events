clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1456309508
scoreboard teams join BHREh @s
function ego:bh_resort/tp_to_spawn if @e[type=armor_stand,tag=BHREStand,score_BHREst_min=0,score_BHREst=2]
