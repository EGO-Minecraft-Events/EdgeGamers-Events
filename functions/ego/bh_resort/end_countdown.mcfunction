scoreboard players reset Countdown BHRE
title @a actionbar {"text":"The seekers has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1481,y=50,z=-104,dx=6,dy=-6,dz=5,team=BHREv] -1420 66 -36 145 0
minecraft:tp @a[x=-1481,y=50,z=-104,dx=6,dy=-6,dz=5,team=BHREv] -1420 66 -36 145 0
scoreboard players operation @s BHREti = &GameTime BHREcalc
scoreboard players set @s BHREst 3
