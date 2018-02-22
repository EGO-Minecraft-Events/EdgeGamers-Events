execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
fill -65 60 -66 -58 60 -73 stonebrick 0 replace redstone_block 0
execute @a[team=BHVR2h] ~ ~ ~ function ego:bh_virus_2/give_disguise
scoreboard players operation @s BHVR2ti = BHVR2Countdown BHVR2calc
scoreboard players set @s BHVR2st 2
