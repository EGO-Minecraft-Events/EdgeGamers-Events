execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHCDEh] ~ ~ ~ function ego:bh_castle_de_emmy/give_disguise
minecraft:tp @a[x=-1662,y=73,z=-7,dx=1505,dy=-10,dz=-93,team=BHCDEh] -1616 4 -59
scoreboard players operation @s BHCDEti = BHCDECountdown BHCDEcalc
scoreboard players set @s BHCDEst 2
