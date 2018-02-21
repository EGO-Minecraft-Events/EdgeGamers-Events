execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHOpl_min=1,score_BHOpl=1] ~ ~ ~ function ego:bho/full_reset_player
scoreboard players set @s BHOgl 1
bd undisguiseall
scoreboard players reset Countdown BHO
scoreboard players reset Minutes BHO
scoreboard players reset Seconds BHO
scoreboard players set @s BHOst 0
