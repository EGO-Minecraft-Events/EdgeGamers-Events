scoreboard players reset Countdown BHASV
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1537,y=5,z=-161,dx=-4,dy=-2,dz=4,team=BHASVv] -1423 7 -169
scoreboard players operation @s BHASVti = BHASVGameTime BHASVcalc
scoreboard players set @s BHASVst 3
