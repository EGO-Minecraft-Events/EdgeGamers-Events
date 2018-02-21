function ego:bh_four_corners/timer
execute @a[x=-1358,y=111,z=-190,dx=89,dy=-10,dz=-89,team=BHFCh] ~ ~ ~ function ego:bh_four_corners/give_disguise
minecraft:tp @a[x=-1358,y=111,z=-190,dx=89,dy=-10,dz=-89,team=BHFCh] -1313 74 -235
execute @a[score_BHFCpl_min=1,score_BHFCpl=1,m=2] ~ ~ ~ function ego:bh_four_corners/player_effects
execute @s[score_BHFCti=0] ~ ~ ~ function ego:bh_four_corners/end_countdown
