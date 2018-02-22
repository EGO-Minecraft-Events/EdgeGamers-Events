execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
fill -73 49 -229 -66 49 -222 stonebrick 0 replace redstone_block 0
execute @a[team=BHVR1h] ~ ~ ~ function ego:bh_virus_1/give_disguise
scoreboard players operation @s BHVR1ti = BHVR1Countdown BHVR1calc
scoreboard players set @s BHVR1st 2
