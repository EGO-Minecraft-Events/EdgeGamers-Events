clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1988608737
scoreboard teams join BHFCh @s
function ego:bh_four_corners/tp_to_spawn if @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=0,score_BHFCst=2]
