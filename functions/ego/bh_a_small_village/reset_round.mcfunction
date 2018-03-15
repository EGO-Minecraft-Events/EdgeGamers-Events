execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHASVpl_min=2,score_BHASVpl=2] ~ ~ ~ function ego:bh_a_small_village/full_reset_player
scoreboard players set @s BHASVgl 1
execute @a ~ ~ ~ function ego:bh_a_small_village/undisguise_player
scoreboard players reset Countdown BHASV
scoreboard players reset Minutes BHASV
scoreboard players reset Seconds BHASV
scoreboard players set @s BHASVst 0
