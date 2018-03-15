function ego:bh_rainbow/timer
function ego:bh_rainbow/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHRApl_min=1,score_BHRApl=1] ~ ~ ~ function ego:bh_rainbow/add_to_round
execute @s[score_BHRAti=0] ~ ~ ~ function ego:bh_rainbow/end_countdown
