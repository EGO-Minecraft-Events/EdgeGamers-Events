execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHMVh] ~ ~ ~ function ego:bh_mushroom_village/give_disguise
minecraft:tp @a[x=-117,y=48,z=-225,dx=-929,dy=-5,dz=72,team=BHMVh] -1075 23 -196
scoreboard players operation @s BHMVti = BHMVCountdown BHMVcalc
scoreboard players set @s BHMVst 2
