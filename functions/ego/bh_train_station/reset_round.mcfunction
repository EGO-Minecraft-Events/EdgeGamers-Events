execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHTSpl_min=1,score_BHTSpl=1] ~ ~ ~ function ego:bh_train_station/full_reset_player
scoreboard players set @s BHTSgl 1
bd undisguiseall
scoreboard players reset Countdown BHTS
scoreboard players reset Minutes BHTS
scoreboard players reset Seconds BHTS
scoreboard players set @s BHTSst 0
