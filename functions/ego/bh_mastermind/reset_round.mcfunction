execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMMpl_min=1,score_BHMMpl=1] ~ ~ ~ function ego:bh_mastermind/full_reset_player
scoreboard players set @s BHMMgl 1
bd undisguiseall
scoreboard players reset Countdown BHMM
scoreboard players reset Minutes BHMM
scoreboard players reset Seconds BHMM
scoreboard players set @s BHMMst 0
