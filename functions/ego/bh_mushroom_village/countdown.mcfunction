function ego:bh_mushroom_village/timer
execute @a[x=-117,y=48,z=-225,dx=-929,dy=-5,dz=72,team=BHMVh] ~ ~ ~ function ego:bh_mushroom_village/give_disguise
minecraft:tp @a[x=-117,y=48,z=-225,dx=-929,dy=-5,dz=72,team=BHMVh] -1075 23 -196
execute @a[score_BHMVpl_min=1,score_BHMVpl=1,m=2] ~ ~ ~ function ego:bh_mushroom_village/player_effects
execute @s[score_BHMVti=0] ~ ~ ~ function ego:bh_mushroom_village/end_countdown
