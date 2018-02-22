execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHZpl_min=1,score_BHZpl=1] ~ ~ ~ function ego:bh_zelda/full_reset_player
scoreboard players set @s BHZgl 1
bd undisguiseall
scoreboard players reset Countdown BHZ
scoreboard players reset Minutes BHZ
scoreboard players reset Seconds BHZ
scoreboard players set @s BHZst 0
