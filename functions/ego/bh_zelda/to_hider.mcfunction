clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 558233482
scoreboard teams join BHZh @s
function ego:bh_zelda/tp_to_spawn if @e[type=armor_stand,tag=BHZStand,score_BHZst_min=0,score_BHZst=2]
