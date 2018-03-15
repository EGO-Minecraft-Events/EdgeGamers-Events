function ego:bh_jungle/timer
function ego:bh_jungle/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHJpl_min=1,score_BHJpl=1] ~ ~ ~ function ego:bh_jungle/add_to_round
execute @s[score_BHJti=0] ~ ~ ~ function ego:bh_jungle/end_countdown
