scoreboard players reset Countdown BHA
title @a actionbar {"text":"The seekers has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1564,y=16,z=-10,dx=3,dy=-4,dz=2,team=BHAv] -1544 7 -52
minecraft:tp @a[x=-1564,y=16,z=-10,dx=3,dy=-4,dz=2,team=BHAv] -1544 7 -52
scoreboard players operation @s BHAti = &GameTime BHAcalc
scoreboard players set @s BHAst 3
