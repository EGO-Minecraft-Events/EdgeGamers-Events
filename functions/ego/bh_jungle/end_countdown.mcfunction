scoreboard players reset Countdown BHJ
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1047,y=3,z=-89,dx=-2,dy=-2,dz=-3,team=BHJv] -1085.0 10 -120.0
scoreboard players operation @s BHJti = BHJGameTime BHJcalc
scoreboard players set @s BHJst 3
