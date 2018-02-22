function ego:bh_virus_1/timer
execute @a[x=-85,y=45,z=-241,dx=31,dy=5,dz=31,team=BHVR1h] ~ ~ ~ function ego:bh_virus_1/give_disguise
minecraft:tp @a[x=-85,y=45,z=-241,dx=31,dy=5,dz=31,team=BHVR1h] -69.0 38 -225.0
execute @a[score_BHVR1pl_min=1,score_BHVR1pl=1,m=2] ~ ~ ~ function ego:bh_virus_1/player_effects
execute @s[score_BHVR1ti=0] ~ ~ ~ function ego:bh_virus_1/end_countdown
