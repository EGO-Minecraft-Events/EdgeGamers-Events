minecraft:tp @a[x=692,y=25,z=227,dx=-73,dy=-5,dz=-49,team=BHHDh] str(634 4 202 -90 0)
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
scoreboard players operation @s BHHDti = BHHDCountdown BHHDcalc
scoreboard players set @s BHHDst 2
