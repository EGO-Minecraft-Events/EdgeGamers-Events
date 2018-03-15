function ego:bh_resort/timer
function ego:bh_resort/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHREpl_min=1,score_BHREpl=1] ~ ~ ~ function ego:bh_resort/add_to_round
execute @s[score_BHREti=0] ~ ~ ~ function ego:bh_resort/end_countdown
