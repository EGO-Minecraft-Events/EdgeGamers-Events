execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHAh] ~ ~ ~ function ego:bh_apocalypse/give_disguise
minecraft:tp @a[x=-1565,y=47,z=-102,dx=74,dy=-3,dz=94,team=BHAh] -1544 7 -52
scoreboard players operation @s BHAti = BHACountdown BHAcalc
scoreboard players set @s BHAst 2
