clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 244577678
scoreboard teams join BHASVh @s
function ego:bh_a_small_village/tp_to_spawn if @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=0,score_BHASVst=2]
