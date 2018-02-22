scoreboard players reset Countdown BHVR1
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
fill -73 52 -222 -66 52 -229 stonebrick 0 replace redstone_block 0
fill -73 49 -229 -66 49 -222 redstone_block 0 replace stonebrick 0
scoreboard players operation @s BHVR1ti = BHVR1GameTime BHVR1calc
scoreboard players set @s BHVR1st 3
