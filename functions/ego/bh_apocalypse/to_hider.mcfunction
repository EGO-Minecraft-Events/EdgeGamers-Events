clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1203107457
scoreboard teams join BHAh @s
function ego:bh_apocalypse/tp_to_spawn if @e[type=armor_stand,tag=BHAStand,score_BHAst_min=0,score_BHAst=2]
