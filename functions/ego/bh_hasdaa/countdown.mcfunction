function ego:bh_hasdaa/timer
execute @a[x=692,y=25,z=227,dx=-73,dy=-5,dz=-49,team=BHHDh] ~ ~ ~ function ego:bh_hasdaa/give_disguise
minecraft:tp @a[x=692,y=25,z=227,dx=-73,dy=-5,dz=-49,team=BHHDh] 634 4 202 -90 0
execute @a[score_BHHDpl_min=1,score_BHHDpl=1,m=2] ~ ~ ~ function ego:bh_hasdaa/player_effects
execute @s[score_BHHDti=0] ~ ~ ~ function ego:bh_hasdaa/end_countdown
