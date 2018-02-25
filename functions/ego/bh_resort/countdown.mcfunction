function ego:bh_resort/timer
execute @a[x=-1390,y=101,z=-13,dx=-92,dy=-4,dz=-92,team=BHREh] ~ ~ ~ function ego:bh_resort/give_disguise
minecraft:tp @a[x=-1390,y=101,z=-13,dx=-92,dy=-4,dz=-92,team=BHREh] -1420 66 -36 145 0
execute @a[score_BHREpl_min=1,score_BHREpl=1,m=2] ~ ~ ~ function ego:bh_resort/player_effects
execute @s[score_BHREti=0] ~ ~ ~ function ego:bh_resort/end_countdown
