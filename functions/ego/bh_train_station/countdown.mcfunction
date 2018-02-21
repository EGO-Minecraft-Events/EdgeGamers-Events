function ego:bh_train_station/timer
execute @a[x=-1208,y=34,z=-186,dx=-175,dy=-3,dz=175,team=BHTSh] ~ ~ ~ function ego:bh_train_station/give_disguise
minecraft:tp @a[x=-1208,y=34,z=-186,dx=-175,dy=-3,dz=175,team=BHTSh] -1282 12 -98
execute @a[score_BHTSpl_min=1,score_BHTSpl=1,m=2] ~ ~ ~ function ego:bh_train_station/player_effects
execute @s[score_BHTSti=0] ~ ~ ~ function ego:bh_train_station/end_countdown
