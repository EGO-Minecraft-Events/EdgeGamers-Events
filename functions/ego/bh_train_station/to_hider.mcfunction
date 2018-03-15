function ego:bh_train_station/clear_player
scoreboard teams join BHTSh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1208,y=34,z=-186,dx=-175,dy=-3,dz=175] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_train_station/tp_to_spawn if @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=0,score_BHTSst=1]
