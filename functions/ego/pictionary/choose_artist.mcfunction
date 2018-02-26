scoreboard players set @a PCcl 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,m=2,score_PCpl_min=1,score_PCpl=1] PCcl 1
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_HOST_min=0,score_HOST=0] PCcl 0
execute @r[score_PCcl_min=1,score_PCcl=1] ~ ~ ~ function ego:pictionary/add_to_round
