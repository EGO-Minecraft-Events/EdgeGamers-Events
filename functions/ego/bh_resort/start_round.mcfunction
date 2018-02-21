execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHREh] ~ ~ ~ function ego:bh_resort/give_disguise
minecraft:tp @a[x=-1390,y=101,z=-13,dx=-92,dy=-4,dz=-92,team=BHREh] -1420 66 -36 145 0
scoreboard players operation @s BHREti = BHRECountdown BHREcalc
scoreboard players set @s BHREst 2
