scoreboard players reset Countdown BHH
title @a actionbar {"text":"The seekers has been released!","color":"yellow"}
execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
minecraft:tp @a[x=-1073,y=27,z=-266,dx=-2,dy=-3,dz=-2,team=BHHv] -1067 7 -236 145 0
minecraft:tp @a[x=-1073,y=27,z=-266,dx=-2,dy=-3,dz=-2,team=BHHv] -1067 7 -236 145 0
scoreboard players operation @s BHHti = &GameTime BHHcalc
scoreboard players set @s BHHst 3
