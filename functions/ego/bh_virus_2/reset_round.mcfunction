execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHVR2pl_min=1,score_BHVR2pl=1] ~ ~ ~ function ego:bh_virus_2/full_reset_player
scoreboard players set @s BHVR2gl 1
fill -64 63 -67 -59 63 -72 redstone_block 0 replace stonebrick 0
fill -65 60 -66 -58 60 -73 redstone_block 0 replace stonebrick 0
bd undisguiseall
scoreboard players reset Countdown BHVR2
scoreboard players reset Minutes BHVR2
scoreboard players reset Seconds BHVR2
scoreboard players set @s BHVR2st 0
