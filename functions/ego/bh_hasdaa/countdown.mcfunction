function ego:bh_hasdaa/timer
execute @a[x=-1120,y=28,z=-60,dx=73,dy=-4,dz=49,team=BHHDh] ~ ~ ~ function ego:bh_hasdaa/give_disguise
minecraft:tp @a[x=-1120,y=28,z=-60,dx=73,dy=-4,dz=49,team=BHHDh] -1103 7 -35 -90 0
execute @a[score_BHHDpl_min=1,score_BHHDpl=1,m=2] ~ ~ ~ function ego:bh_hasdaa/player_effects
execute @s[score_BHHDti=0] ~ ~ ~ function ego:bh_hasdaa/end_countdown
