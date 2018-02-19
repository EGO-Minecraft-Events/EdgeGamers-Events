function ego:virus_1/timer
execute @a[score_VR1pl_min=1,score_VR1pl=1,m=2] ~ ~ ~ function ego:virus_1/player_effects
execute @s[score_VR1ti=0] ~ ~ ~ function ego:virus_1/end_countdown
