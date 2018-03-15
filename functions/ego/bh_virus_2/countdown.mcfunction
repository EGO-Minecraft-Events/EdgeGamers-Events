function ego:bh_virus_2/timer
function ego:bh_virus_2/player_effects
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHVR2pl_min=1,score_BHVR2pl=1] ~ ~ ~ function ego:bh_virus_2/add_to_round
execute @s[score_BHVR2ti=0] ~ ~ ~ function ego:bh_virus_2/end_countdown
