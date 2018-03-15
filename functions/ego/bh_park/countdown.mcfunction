function ego:bh_park/timer
function ego:bh_park/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHPpl_min=1,score_BHPpl=1] ~ ~ ~ function ego:bh_park/add_to_round
execute @s[score_BHPti=0] ~ ~ ~ function ego:bh_park/end_countdown
