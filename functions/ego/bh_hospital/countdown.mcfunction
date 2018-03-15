function ego:bh_hospital/timer
function ego:bh_hospital/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHpl_min=1,score_BHHpl=1] ~ ~ ~ function ego:bh_hospital/add_to_round
execute @s[score_BHHti=0] ~ ~ ~ function ego:bh_hospital/end_countdown
