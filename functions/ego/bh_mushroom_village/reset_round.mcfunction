execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMVpl_min=1,score_BHMVpl=1] ~ ~ ~ function ego:bh_mushroom_village/full_reset_player
scoreboard players set @s BHMVgl 1
bd undisguiseall
scoreboard players reset Countdown BHMV
scoreboard players reset Minutes BHMV
scoreboard players reset Seconds BHMV
scoreboard players set @s BHMVst 0
