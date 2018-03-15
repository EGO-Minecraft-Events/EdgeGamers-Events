execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHVR2pl_min=2,score_BHVR2pl=2] ~ ~ ~ function ego:bh_virus_2/full_reset_player
scoreboard players set @s BHVR2gl 1
execute @a ~ ~ ~ function ego:bh_virus_2/undisguise_player
scoreboard players reset Countdown BHVR2
scoreboard players reset Minutes BHVR2
scoreboard players reset Seconds BHVR2
scoreboard players set @s BHVR2st 0
