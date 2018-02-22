execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHPh] ~ ~ ~ function ego:bh_park/give_disguise
minecraft:tp @a[x=-1221,y=40,z=-279,dx=-41,dy=-4,dz=89,team=BHPh] -1247 8 -230
scoreboard players operation @s BHPti = BHPCountdown BHPcalc
scoreboard players set @s BHPst 2
