execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHDpl_min=2,score_BHHDpl=2] ~ ~ ~ function ego:bh_hasdaa/full_reset_player
scoreboard players set @s BHHDgl 1
execute @a ~ ~ ~ function ego:bh_hasdaa/undisguise_player
scoreboard players reset Countdown BHHD
scoreboard players reset Minutes BHHD
scoreboard players reset Seconds BHHD
scoreboard players set @s BHHDst 0
