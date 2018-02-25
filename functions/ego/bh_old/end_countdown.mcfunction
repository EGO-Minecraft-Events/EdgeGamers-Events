scoreboard players reset Countdown BHO
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1181,y=10,z=-134,dx=2,dy=-3,dz=-3,team=BHOv] -1158.0 25 -135.0
scoreboard players operation @s BHOti = BHOGameTime BHOcalc
scoreboard players set @s BHOst 3
