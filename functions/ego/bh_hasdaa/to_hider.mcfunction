clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 478919104
scoreboard teams join BHHDh @s
function ego:bh_hasdaa/tp_to_spawn if @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=0,score_BHHDst=2]
