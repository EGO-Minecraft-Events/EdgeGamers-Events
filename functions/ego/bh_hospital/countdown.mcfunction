function ego:bh_hospital/timer
execute @a[x=-1080,y=37,z=-283,dx=12,dy=-12,dz=12,team=BHHh] ~ ~ ~ function ego:bh_hospital/give_disguise
minecraft:tp @a[x=-1080,y=37,z=-283,dx=12,dy=-12,dz=12,team=BHHh] -1067 7 -236 145 0
execute @a[score_BHHpl_min=1,score_BHHpl=1,m=2] ~ ~ ~ function ego:bh_hospital/player_effects
execute @s[score_BHHti=0] ~ ~ ~ function ego:bh_hospital/end_countdown
