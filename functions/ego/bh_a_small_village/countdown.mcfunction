function ego:bh_a_small_village/timer
execute @a[x=-1443,y=15,z=-230,dx=7,dy=-4,dz=4,team=BHASVh] ~ ~ ~ function ego:bh_a_small_village/give_disguise
minecraft:tp @a[x=-1443,y=15,z=-230,dx=7,dy=-4,dz=4,team=BHASVh] -1423 7 -169
execute @a[score_BHASVpl_min=1,score_BHASVpl=1,m=2] ~ ~ ~ function ego:bh_a_small_village/player_effects
execute @s[score_BHASVti=0] ~ ~ ~ function ego:bh_a_small_village/end_countdown
