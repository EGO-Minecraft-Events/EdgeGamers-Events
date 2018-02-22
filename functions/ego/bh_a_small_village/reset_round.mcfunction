execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHASVpl_min=1,score_BHASVpl=1] ~ ~ ~ function ego:bh_a_small_village/full_reset_player
scoreboard players set @s BHASVgl 1
bd undisguiseall
scoreboard players reset Countdown BHASV
scoreboard players reset Minutes BHASV
scoreboard players reset Seconds BHASV
scoreboard players set @s BHASVst 0
