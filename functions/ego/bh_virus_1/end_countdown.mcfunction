scoreboard players reset Countdown BHVR1
title @a actionbar {"text":"The seekers has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-70,y=53,z=-226,dx=1,dy=3,dz=1,team=BHVR1v] -69.0 38 -225.0
minecraft:tp @a[x=-70,y=53,z=-226,dx=1,dy=3,dz=1,team=BHVR1v] -69.0 38 -225.0
scoreboard players operation @s BHVR1ti = &GameTime BHVR1calc
scoreboard players set @s BHVR1st 3
