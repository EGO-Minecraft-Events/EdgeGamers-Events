title @a actionbar {"text":"The doors are now open","color":"green"}
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
fill -73 49 -229 -66 49 -222 stonebrick 0 replace redstone_block 0
scoreboard players operation @s VR1ti = &Countdown VR1calc
scoreboard players set @s VR1st 2
