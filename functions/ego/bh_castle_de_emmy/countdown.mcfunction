function ego:bh_castle_de_emmy/timer
function ego:bh_castle_de_emmy/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHCDEpl_min=1,score_BHCDEpl=1] ~ ~ ~ function ego:bh_castle_de_emmy/add_to_round
execute @s[score_BHCDEti=0] ~ ~ ~ function ego:bh_castle_de_emmy/end_countdown
