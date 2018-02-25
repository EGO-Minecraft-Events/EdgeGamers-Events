execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHDpl_min=1,score_BHHDpl=1] ~ ~ ~ function ego:bh_hasdaa/full_reset_player
scoreboard players set @s BHHDgl 1
bd undisguiseall
scoreboard players reset Countdown BHHD
scoreboard players reset Minutes BHHD
scoreboard players reset Seconds BHHD
scoreboard players set @s BHHDst 0
