execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHFCpl_min=1,score_BHFCpl=1] ~ ~ ~ function ego:bh_four_corners/full_reset_player
scoreboard players set @s BHFCgl 1
bd undisguiseall
scoreboard players reset Countdown BHFC
scoreboard players reset Minutes BHFC
scoreboard players reset Seconds BHFC
scoreboard players set @s BHFCst 0
