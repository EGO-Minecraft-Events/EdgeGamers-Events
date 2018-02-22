function ego:bh_apocalypse/timer
execute @a[x=-1565,y=47,z=-102,dx=74,dy=-3,dz=94,team=BHAh] ~ ~ ~ function ego:bh_apocalypse/give_disguise
minecraft:tp @a[x=-1565,y=47,z=-102,dx=74,dy=-3,dz=94,team=BHAh] -1544 7 -52
execute @a[score_BHApl_min=1,score_BHApl=1,m=2] ~ ~ ~ function ego:bh_apocalypse/player_effects
execute @s[score_BHAti=0] ~ ~ ~ function ego:bh_apocalypse/end_countdown
