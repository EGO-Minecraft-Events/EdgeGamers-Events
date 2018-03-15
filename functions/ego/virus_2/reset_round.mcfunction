execute @a[score_gSA_min=1,score_gSA=1,m=2,score_VR2pl_min=2,score_VR2pl=2] ~ ~ ~ function ego:virus_2/full_reset_player
scoreboard players set @s VR2gl 1
fill -64 63 -67 -59 63 -72 redstone_block 0 replace stonebrick 0
fill -65 60 -66 -58 60 -73 redstone_block 0 replace stonebrick 0
scoreboard players reset Countdown VR2
scoreboard players reset Minutes VR2
scoreboard players reset Seconds VR2
scoreboard players set @s VR2st 0
