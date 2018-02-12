scoreboard players set @s VR1chi 0
execute @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,m=2,team=VR1r] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=VR1Stand] VR1chi 1
scoreboard players operation Hiders VR1 = @s VR1chi
scoreboard players set @s VR1cvr 0
execute @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,m=2,team=VR1r] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=VR1Stand] VR1cvr 1
scoreboard players operation Virus VR1 = @s VR1cvr
