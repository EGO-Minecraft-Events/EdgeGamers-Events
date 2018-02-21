execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHJpl_min=1,score_BHJpl=1] ~ ~ ~ function ego:bh_jungle/full_reset_player
scoreboard players set @s BHJgl 1
bd undisguiseall
scoreboard players reset Countdown BHJ
scoreboard players reset Minutes BHJ
scoreboard players reset Seconds BHJ
scoreboard players set @s BHJst 0
