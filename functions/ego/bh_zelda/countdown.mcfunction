function ego:bh_zelda/timer
function ego:bh_zelda/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHZpl_min=1,score_BHZpl=1] ~ ~ ~ function ego:bh_zelda/add_to_round
execute @s[score_BHZti=0] ~ ~ ~ function ego:bh_zelda/end_countdown
