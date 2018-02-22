execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHZh] ~ ~ ~ function ego:bh_zelda/give_disguise
minecraft:tp @a[x=-1130,y=31,z=-218,dx=-83,dy=9,dz=38,team=BHZh] -1169 7 -184 180 0
scoreboard players operation @s BHZti = BHZCountdown BHZcalc
scoreboard players set @s BHZst 2
