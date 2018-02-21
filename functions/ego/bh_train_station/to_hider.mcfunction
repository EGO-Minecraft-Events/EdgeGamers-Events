clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1991689630
scoreboard teams join BHTSh @s
function ego:bh_train_station/tp_to_spawn if @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=0,score_BHTSst=2]
