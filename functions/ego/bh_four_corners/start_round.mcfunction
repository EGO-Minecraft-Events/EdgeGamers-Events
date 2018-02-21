execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHFCh] ~ ~ ~ function ego:bh_four_corners/give_disguise
minecraft:tp @a[x=-1358,y=111,z=-190,dx=89,dy=-10,dz=-89,team=BHFCh] -1313 74 -235
scoreboard players operation @s BHFCti = BHFCCountdown BHFCcalc
scoreboard players set @s BHFCst 2
