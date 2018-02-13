function ego:virus_1/timer
execute @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,m=2,score_VR1pl_min=0] ~ ~ ~ function ego:virus_1/player_effects
execute @s[score_VR1ti_min=0,score_VR1ti=0] ~ ~ ~ function ego:virus_1/end_countdown
