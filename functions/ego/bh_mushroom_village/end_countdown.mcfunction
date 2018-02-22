scoreboard players reset Countdown BHMV
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1048,y=20,z=-213,dx=2,dy=-4,dz=2,team=BHMVv] -1075 23 -196
scoreboard players operation @s BHMVti = BHMVGameTime BHMVcalc
scoreboard players set @s BHMVst 3
