execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHCDEpl_min=2,score_BHCDEpl=2] ~ ~ ~ function ego:bh_castle_de_emmy/full_reset_player
scoreboard players set @s BHCDEgl 1
execute @a ~ ~ ~ function ego:bh_castle_de_emmy/undisguise_player
scoreboard players reset Countdown BHCDE
scoreboard players reset Minutes BHCDE
scoreboard players reset Seconds BHCDE
scoreboard players set @s BHCDEst 0
