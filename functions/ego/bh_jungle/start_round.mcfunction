execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHJh] ~ ~ ~ function ego:bh_jungle/give_disguise
minecraft:tp @a[x=-1103,y=13,z=-100,dx=-5,dy=-3,dz=4,team=BHJh] -1085.0 10 -120.0
scoreboard players operation @s BHJti = BHJCountdown BHJcalc
scoreboard players set @s BHJst 2
