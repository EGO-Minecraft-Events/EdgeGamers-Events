function ego:bh_virus_2/timer
execute @a[x=-77,y=56,z=-85,dx=31,dy=5,dz=31,team=BHVR2h] ~ ~ ~ function ego:bh_virus_2/give_disguise
minecraft:tp @a[x=-77,y=56,z=-85,dx=31,dy=5,dz=31,team=BHVR2h] -61.0 40 -69.0
execute @a[score_BHVR2pl_min=1,score_BHVR2pl=1,m=2] ~ ~ ~ function ego:bh_virus_2/player_effects
execute @s[score_BHVR2ti=0] ~ ~ ~ function ego:bh_virus_2/end_countdown
