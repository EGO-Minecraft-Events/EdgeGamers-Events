execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHHDh] ~ ~ ~ function ego:bh_hasdaa/give_disguise
minecraft:tp @a[x=-1120,y=28,z=-60,dx=73,dy=-4,dz=49,team=BHHDh] -1103 7 -35 -90 0
scoreboard players operation @s BHHDti = BHHDCountdown BHHDcalc
scoreboard players set @s BHHDst 2
