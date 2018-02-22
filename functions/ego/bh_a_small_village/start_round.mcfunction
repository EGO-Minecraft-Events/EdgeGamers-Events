execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHASVh] ~ ~ ~ function ego:bh_a_small_village/give_disguise
minecraft:tp @a[x=-1443,y=15,z=-230,dx=7,dy=-4,dz=4,team=BHASVh] -1423 7 -169
scoreboard players operation @s BHASVti = BHASVCountdown BHASVcalc
scoreboard players set @s BHASVst 2
