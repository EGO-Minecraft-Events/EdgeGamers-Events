function ego:bh_park/timer
execute @a[x=-1221,y=40,z=-279,dx=-41,dy=-4,dz=89,team=BHPh] ~ ~ ~ function ego:bh_park/give_disguise
minecraft:tp @a[x=-1221,y=40,z=-279,dx=-41,dy=-4,dz=89,team=BHPh] -1247 8 -230
execute @a[score_BHPpl_min=1,score_BHPpl=1,m=2] ~ ~ ~ function ego:bh_park/player_effects
execute @s[score_BHPti=0] ~ ~ ~ function ego:bh_park/end_countdown
