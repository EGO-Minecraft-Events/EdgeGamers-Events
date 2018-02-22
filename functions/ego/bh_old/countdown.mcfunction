function ego:bh_old/timer
execute @a[x=-1193,y=45,z=-175,dx=71,dy=-5,dz=71,team=BHOh] ~ ~ ~ function ego:bh_old/give_disguise
minecraft:tp @a[x=-1193,y=45,z=-175,dx=71,dy=-5,dz=71,team=BHOh] -1158.0 25 -135.0
execute @a[score_BHOpl_min=1,score_BHOpl=1,m=2] ~ ~ ~ function ego:bh_old/player_effects
execute @s[score_BHOti=0] ~ ~ ~ function ego:bh_old/end_countdown
