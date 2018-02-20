function ego:virus_2/timer
execute @a[score_VR2pl_min=1,score_VR2pl=1,m=2] ~ ~ ~ function ego:virus_2/player_effects
execute @s[score_VR2ti=0] ~ ~ ~ function ego:virus_2/end_countdown
