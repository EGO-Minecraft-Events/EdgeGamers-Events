execute @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,m=2,score_VR1pl_min=1,score_VR1pl=1] ~ ~ ~ function ego:virus_1/round_reset_player
scoreboard players set @s VR1gl 1
fill -73 52 -222 -66 52 -229 redstone_block 0 replace stonebrick 0
fill -73 49 -229 -66 49 -222 redstone_block 0 replace stonebrick 0
scoreboard players reset Countdown VR1
scoreboard players reset Minutes VR1
scoreboard players reset Seconds VR1
scoreboard players set @s VR1st 0
