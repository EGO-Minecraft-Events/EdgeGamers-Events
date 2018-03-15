execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHRApl_min=2,score_BHRApl=2] ~ ~ ~ function ego:bh_rainbow/full_reset_player
scoreboard players set @s BHRAgl 1
execute @a ~ ~ ~ function ego:bh_rainbow/undisguise_player
scoreboard players reset Countdown BHRA
scoreboard players reset Minutes BHRA
scoreboard players reset Seconds BHRA
scoreboard players set @s BHRAst 0
