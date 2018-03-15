function ego:bh_mastermind/timer
function ego:bh_mastermind/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMMpl_min=1,score_BHMMpl=1] ~ ~ ~ function ego:bh_mastermind/add_to_round
execute @s[score_BHMMti=0] ~ ~ ~ function ego:bh_mastermind/end_countdown
