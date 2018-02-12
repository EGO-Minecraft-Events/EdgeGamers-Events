scoreboard players reset Countdown VR1
title @a action_bar {"text":"The virus has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
fill -73 52 -222 -66 52 -229 stonebrick 0 replace redstone_block 0
fill -73 49 -229 -66 49 -222 redstone_block 0 replace stonebrick 0
minecraft:tp @a[x=-85,y=45,z=-241,dx=31,dy=5,dz=31,team=VR1r] -69.0 53 -225.0
scoreboard players operation @s VR1ti = VR1GameTime VR1op
scoreboard players set @s VR1st 3
