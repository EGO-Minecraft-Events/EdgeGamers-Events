scoreboard players reset Countdown BHP
title @a actionbar {"text":"The seekers has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1243,y=10,z=-286,dx=-2,dy=-4,dz=2,team=BHPv] -1247 8 -230
minecraft:tp @a[x=-1243,y=10,z=-286,dx=-2,dy=-4,dz=2,team=BHPv] -1247 8 -230
scoreboard players operation @s BHPti = &GameTime BHPcalc
scoreboard players set @s BHPst 3
