execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHOh] ~ ~ ~ function ego:bho/give_disguise
minecraft:tp @a[x=-1193,y=45,z=-175,dx=71,dy=-5,dz=71,team=BHOh] -1158.0 25 -135.0
scoreboard players operation @s BHOti = BHOCountdown BHOcalc
scoreboard players set @s BHOst 2
