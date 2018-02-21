execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHHDh] ~ ~ ~ function ego:bh_hasdaa/give_disguise
minecraft:tp @a[x=692,y=25,z=227,dx=-73,dy=-5,dz=-49,team=BHHDh] 634 4 202 -90 0
scoreboard players operation @s BHHDti = BHHDCountdown BHHDcalc
scoreboard players set @s BHHDst 2
