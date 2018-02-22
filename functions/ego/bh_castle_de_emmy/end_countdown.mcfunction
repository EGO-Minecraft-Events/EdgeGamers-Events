scoreboard players reset Countdown BHCDE
title @a actionbar {"text":"The seeker has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1659,y=6,z=-98,dx=-2,dy=-3,dz=-2,team=BHCDEv] -1616 4 -59
scoreboard players operation @s BHCDEti = BHCDEGameTime BHCDEcalc
scoreboard players set @s BHCDEst 3
