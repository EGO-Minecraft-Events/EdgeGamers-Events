scoreboard players reset Countdown VR1
title @a actionbar {"text":"The virus has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
fill -73 52 -222 -66 52 -229 stonebrick 0 replace redstone_block 0
fill -73 49 -229 -66 49 -222 redstone_block 0 replace stonebrick 0
scoreboard players operation @s VR1ti = &GameTime VR1calc
scoreboard players set @s VR1st 3
