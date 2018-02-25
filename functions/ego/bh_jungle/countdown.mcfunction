function ego:bh_jungle/timer
execute @a[x=-1103,y=13,z=-100,dx=-5,dy=-3,dz=4,team=BHJh] ~ ~ ~ function ego:bh_jungle/give_disguise
minecraft:tp @a[x=-1103,y=13,z=-100,dx=-5,dy=-3,dz=4,team=BHJh] -1085.0 10 -120.0
execute @a[score_BHJpl_min=1,score_BHJpl=1,m=2] ~ ~ ~ function ego:bh_jungle/player_effects
execute @s[score_BHJti=0] ~ ~ ~ function ego:bh_jungle/end_countdown
