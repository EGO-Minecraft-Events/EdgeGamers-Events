execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHJpl_min=2,score_BHJpl=2] ~ ~ ~ function ego:bh_jungle/full_reset_player
scoreboard players set @s BHJgl 1
execute @a ~ ~ ~ function ego:bh_jungle/undisguise_player
scoreboard players reset Countdown BHJ
scoreboard players reset Minutes BHJ
scoreboard players reset Seconds BHJ
scoreboard players set @s BHJst 0
