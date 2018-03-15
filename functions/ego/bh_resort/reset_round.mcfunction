execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHREpl_min=2,score_BHREpl=2] ~ ~ ~ function ego:bh_resort/full_reset_player
scoreboard players set @s BHREgl 1
execute @a ~ ~ ~ function ego:bh_resort/undisguise_player
scoreboard players reset Countdown BHRE
scoreboard players reset Minutes BHRE
scoreboard players reset Seconds BHRE
scoreboard players set @s BHREst 0
