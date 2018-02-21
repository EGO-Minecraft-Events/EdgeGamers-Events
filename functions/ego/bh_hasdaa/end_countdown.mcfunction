scoreboard players reset Countdown BHHD
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1097,y=22,z=-82,dx=-2,dy=-2,dz=-1,team=BHHDv] -1103 7 -35 -90 0
scoreboard players operation @s BHHDti = BHHDGameTime BHHDcalc
scoreboard players set @s BHHDst 3
