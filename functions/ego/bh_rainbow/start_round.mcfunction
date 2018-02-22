execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHRAh] ~ ~ ~ function ego:bh_rainbow/give_disguise
minecraft:tp @a[x=-1171,y=38,z=-93,dx=40,dy=-11,dz=83,team=BHRAh] -1152 7 -80
scoreboard players operation @s BHRAti = BHRACountdown BHRAcalc
scoreboard players set @s BHRAst 2
