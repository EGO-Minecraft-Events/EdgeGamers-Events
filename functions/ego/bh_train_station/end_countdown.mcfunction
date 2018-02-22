scoreboard players reset Countdown BHTS
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1363,y=6,z=-70,dx=2,dy=4,dz=-2,team=BHTSv] -1282 12 -98
scoreboard players operation @s BHTSti = BHTSGameTime BHTScalc
scoreboard players set @s BHTSst 3
