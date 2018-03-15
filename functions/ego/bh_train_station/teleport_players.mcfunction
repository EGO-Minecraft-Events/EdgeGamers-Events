execute @s[team=BHTSv] ~ ~ ~ function ego:bh_train_station/tp_to_wait if @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=0,score_BHTSst=2]
execute @s[team=BHTSv] ~ ~ ~ function ego:bh_train_station/tp_to_arena if @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=3,score_BHTSst=6]
