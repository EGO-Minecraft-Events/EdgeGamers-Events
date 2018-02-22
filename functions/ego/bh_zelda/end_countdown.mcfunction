scoreboard players reset Countdown BHZ
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1131,y=11,z=-182,dx=2,dy=-4,dz=2,team=BHZv] -1169 7 -184 180 0
scoreboard players operation @s BHZti = BHZGameTime BHZcalc
scoreboard players set @s BHZst 3
