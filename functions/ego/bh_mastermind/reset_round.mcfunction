execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMMpl_min=2,score_BHMMpl=2] ~ ~ ~ function ego:bh_mastermind/full_reset_player
scoreboard players set @s BHMMgl 1
execute @a ~ ~ ~ function ego:bh_mastermind/undisguise_player
scoreboard players reset Countdown BHMM
scoreboard players reset Minutes BHMM
scoreboard players reset Seconds BHMM
scoreboard players set @s BHMMst 0
