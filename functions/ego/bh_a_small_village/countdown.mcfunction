function ego:bh_a_small_village/timer
function ego:bh_a_small_village/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHASVpl_min=1,score_BHASVpl=1] ~ ~ ~ function ego:bh_a_small_village/add_to_round
execute @s[score_BHASVti=0] ~ ~ ~ function ego:bh_a_small_village/end_countdown
