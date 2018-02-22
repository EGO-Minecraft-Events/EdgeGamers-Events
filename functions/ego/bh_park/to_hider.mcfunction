clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 818788035
scoreboard teams join BHPh @s
function ego:bh_park/tp_to_spawn if @e[type=armor_stand,tag=BHPStand,score_BHPst_min=0,score_BHPst=2]
