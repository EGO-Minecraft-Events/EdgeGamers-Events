title @a actionbar {"text":"The doors are now open","color":"green"}
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
fill -65 60 -66 -58 60 -73 stonebrick 0 replace redstone_block 0
scoreboard players operation @s VR2ti = VR2Countdown VR2calc
scoreboard players set @s VR2st 2
