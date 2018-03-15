function ego:bh_apocalypse/timer
function ego:bh_apocalypse/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHApl_min=1,score_BHApl=1] ~ ~ ~ function ego:bh_apocalypse/add_to_round
execute @s[score_BHAti=0] ~ ~ ~ function ego:bh_apocalypse/end_countdown
