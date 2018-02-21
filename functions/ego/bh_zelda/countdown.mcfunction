function ego:bh_zelda/timer
execute @a[x=-1130,y=31,z=-218,dx=-83,dy=9,dz=38,team=BHZh] ~ ~ ~ function ego:bh_zelda/give_disguise
minecraft:tp @a[x=-1130,y=31,z=-218,dx=-83,dy=9,dz=38,team=BHZh] -1169 7 -184 180 0
execute @a[score_BHZpl_min=1,score_BHZpl=1,m=2] ~ ~ ~ function ego:bh_zelda/player_effects
execute @s[score_BHZti=0] ~ ~ ~ function ego:bh_zelda/end_countdown
