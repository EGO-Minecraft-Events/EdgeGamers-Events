scoreboard players reset Countdown BHFC
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1354,y=55,z=-277,dy=-4,dz=-2,team=BHFCv] -1313 74 -235
scoreboard players operation @s BHFCti = BHFCGameTime BHFCcalc
scoreboard players set @s BHFCst 3
