execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMpl_min=1,score_BHMpl=1] ~ ~ ~ function ego:bh_mastermind/full_reset_player
scoreboard players set @s BHMgl 1
bd undisguiseall
scoreboard players reset Countdown BHM
scoreboard players reset Minutes BHM
scoreboard players reset Seconds BHM
scoreboard players set @s BHMst 0
