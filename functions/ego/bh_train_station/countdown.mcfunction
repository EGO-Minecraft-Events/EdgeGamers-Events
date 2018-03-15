function ego:bh_train_station/timer
function ego:bh_train_station/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHTSpl_min=1,score_BHTSpl=1] ~ ~ ~ function ego:bh_train_station/add_to_round
execute @s[score_BHTSti=0] ~ ~ ~ function ego:bh_train_station/end_countdown
