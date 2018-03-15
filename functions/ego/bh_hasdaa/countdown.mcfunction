function ego:bh_hasdaa/timer
function ego:bh_hasdaa/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHDpl_min=1,score_BHHDpl=1] ~ ~ ~ function ego:bh_hasdaa/add_to_round
execute @s[score_BHHDti=0] ~ ~ ~ function ego:bh_hasdaa/end_countdown
