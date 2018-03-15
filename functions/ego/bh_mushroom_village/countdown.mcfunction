function ego:bh_mushroom_village/timer
function ego:bh_mushroom_village/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMVpl_min=1,score_BHMVpl=1] ~ ~ ~ function ego:bh_mushroom_village/add_to_round
execute @s[score_BHMVti=0] ~ ~ ~ function ego:bh_mushroom_village/end_countdown
