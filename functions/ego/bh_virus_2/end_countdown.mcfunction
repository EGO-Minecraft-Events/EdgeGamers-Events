scoreboard players reset Countdown BHVR2
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
fill -64 63 -67 -59 63 -72 stonebrick 0 replace redstone_block 0
fill -65 60 -66 -58 60 -73 redstone_block 0 replace stonebrick 0
scoreboard players operation @s BHVR2ti = BHVR2GameTime BHVR2calc
scoreboard players set @s BHVR2st 3
