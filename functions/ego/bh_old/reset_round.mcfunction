execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHOpl_min=2,score_BHOpl=2] ~ ~ ~ function ego:bh_old/full_reset_player
scoreboard players set @s BHOgl 1
execute @a ~ ~ ~ function ego:bh_old/undisguise_player
scoreboard players reset Countdown BHO
scoreboard players reset Minutes BHO
scoreboard players reset Seconds BHO
scoreboard players set @s BHOst 0
