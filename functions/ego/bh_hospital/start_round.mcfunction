execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHHh] ~ ~ ~ function ego:bh_hospital/give_disguise
minecraft:tp @a[x=-1080,y=37,z=-283,dx=12,dy=-12,dz=12,team=BHHh] -1067 7 -236 145 0
scoreboard players operation @s BHHti = BHHCountdown BHHcalc
scoreboard players set @s BHHst 2
