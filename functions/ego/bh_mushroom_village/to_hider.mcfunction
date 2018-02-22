clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 607841732
scoreboard teams join BHMVh @s
function ego:bh_mushroom_village/tp_to_spawn if @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=0,score_BHMVst=2]
