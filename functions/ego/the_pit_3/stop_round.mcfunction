execute @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=1] ~ ~ ~ function ego:the_pit_3/full_reset_player
setblock -80 7 174 redstone_block
setblock -80 7 174 air
scoreboard players reset Countdown TP
scoreboard players reset Time_Elapsed TP
scoreboard players reset Players TP
scoreboard players set @s TPst 0
