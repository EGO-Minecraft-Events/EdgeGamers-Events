scoreboard players reset Countdown BHVR2
title @a actionbar {"text":"The seekers has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-62,y=64,z=-70,dx=1,dy=3,dz=1,team=BHVR2v] -61.0 40 -69.0
minecraft:tp @a[x=-62,y=64,z=-70,dx=1,dy=3,dz=1,team=BHVR2v] -61.0 40 -69.0
scoreboard players operation @s BHVR2ti = &GameTime BHVR2calc
scoreboard players set @s BHVR2st 3
