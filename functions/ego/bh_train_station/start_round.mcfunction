execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHTSh] ~ ~ ~ function ego:bh_train_station/give_disguise
minecraft:tp @a[x=-1208,y=34,z=-186,dx=-175,dy=-3,dz=175,team=BHTSh] -1282 12 -98
scoreboard players operation @s BHTSti = BHTSCountdown BHTScalc
scoreboard players set @s BHTSst 2
