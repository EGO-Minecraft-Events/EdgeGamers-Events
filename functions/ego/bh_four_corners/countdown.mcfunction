function ego:bh_four_corners/timer
function ego:bh_four_corners/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHFCpl_min=1,score_BHFCpl=1] ~ ~ ~ function ego:bh_four_corners/add_to_round
execute @s[score_BHFCti=0] ~ ~ ~ function ego:bh_four_corners/end_countdown
