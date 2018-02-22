execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHVR1pl_min=1,score_BHVR1pl=1] ~ ~ ~ function ego:bh_virus_1/full_reset_player
scoreboard players set @s BHVR1gl 1
fill -73 52 -222 -66 52 -229 redstone_block 0 replace stonebrick 0
fill -73 49 -229 -66 49 -222 redstone_block 0 replace stonebrick 0
bd undisguiseall
scoreboard players reset Countdown BHVR1
scoreboard players reset Minutes BHVR1
scoreboard players reset Seconds BHVR1
scoreboard players set @s BHVR1st 0
