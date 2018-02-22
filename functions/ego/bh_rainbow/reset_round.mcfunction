execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHRApl_min=1,score_BHRApl=1] ~ ~ ~ function ego:bh_rainbow/full_reset_player
scoreboard players set @s BHRAgl 1
bd undisguiseall
scoreboard players reset Countdown BHRA
scoreboard players reset Minutes BHRA
scoreboard players reset Seconds BHRA
scoreboard players set @s BHRAst 0
