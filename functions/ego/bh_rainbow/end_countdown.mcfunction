scoreboard players reset Countdown BHRA
title @a actionbar {"text":"The seekers has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1134,y=12,z=-50,dx=2,dy=-4,team=BHRAv] -1152 7 -80
minecraft:tp @a[x=-1134,y=12,z=-50,dx=2,dy=-4,team=BHRAv] -1152 7 -80
scoreboard players operation @s BHRAti = &GameTime BHRAcalc
scoreboard players set @s BHRAst 3
