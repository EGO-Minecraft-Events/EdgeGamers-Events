function ego:virus_1/timer
function ego:virus_1/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_VR1pl_min=1,score_VR1pl=1] ~ ~ ~ function ego:virus_1/add_to_round
execute @s[score_VR1ti=0] ~ ~ ~ function ego:virus_1/end_countdown
