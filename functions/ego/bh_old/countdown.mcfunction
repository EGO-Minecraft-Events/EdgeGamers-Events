function ego:bh_old/timer
function ego:bh_old/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHOpl_min=1,score_BHOpl=1] ~ ~ ~ function ego:bh_old/add_to_round
execute @s[score_BHOti=0] ~ ~ ~ function ego:bh_old/end_countdown
