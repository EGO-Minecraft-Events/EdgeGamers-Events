execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
execute @a[team=BHMMh] ~ ~ ~ function ego:bh_mastermind/give_disguise
minecraft:tp @a[x=-1213,y=51,z=-222,dx=71,dy=-6,dz=-71,team=BHMMh] -1177 21 -273
scoreboard players operation @s BHMMti = BHMMCountdown BHMMcalc
scoreboard players set @s BHMMst 2
