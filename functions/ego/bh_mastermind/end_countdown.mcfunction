scoreboard players reset Countdown BHM
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1179,y=33,z=-275,dx=5,dy=-1,team=BHMv] -1177 21 -273
scoreboard players operation @s BHMti = BHMGameTime BHMcalc
scoreboard players set @s BHMst 3
