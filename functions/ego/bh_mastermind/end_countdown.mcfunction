scoreboard players reset Countdown BHMM
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1179,y=33,z=-275,dx=5,dy=-1,team=BHMMv] -1177 21 -273
scoreboard players operation @s BHMMti = BHMMGameTime BHMMcalc
scoreboard players set @s BHMMst 3
