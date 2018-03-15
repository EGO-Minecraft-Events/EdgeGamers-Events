function ego:virus_2/timer
function ego:virus_2/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_VR2pl_min=1,score_VR2pl=1] ~ ~ ~ function ego:virus_2/add_to_round
execute @s[score_VR2ti=0] ~ ~ ~ function ego:virus_2/end_countdown
