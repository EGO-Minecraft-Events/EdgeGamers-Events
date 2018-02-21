scoreboard players reset Countdown BHHD
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=641,y=19,z=155,dx=-2,dy=-3,dz=-1,team=BHHDv] 634 4 202 -90 0
scoreboard players operation @s BHHDti = BHHDGameTime BHHDcalc
scoreboard players set @s BHHDst 3
