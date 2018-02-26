scoreboard players add @s TPti 1
scoreboard players operation Time_Elapsed TPcl = @s TPti
scoreboard players operation Time_Elapsed TPcl /= 20 constants
scoreboard players operation Time_Elapsed TP = Time_Elapsed TPcl
minecraft:tp @a[x=-108,y=6,z=146,dy=32,dz=56,m=2,score_TPpl_min=2,score_TPpl=2] ~1 ~ ~
minecraft:tp @a[x=-50,y=6,z=146,dy=32,dz=56,m=2,score_TPpl_min=2,score_TPpl=2] ~-1 ~ ~
minecraft:tp @a[x=-107,y=6,z=145,dx=56,dy=32,m=2,score_TPpl_min=2,score_TPpl=2] ~ ~ ~1
minecraft:tp @a[x=-107,y=6,z=203,dx=56,dy=32,m=2,score_TPpl_min=2,score_TPpl=2] ~ ~ ~-1
kill @a[x=-107,y=6,z=146,dx=56,dz=56,m=2,score_TPpl_min=2,score_TPpl=2]
kill @a[x=-82,y=10,z=171,dx=6,dz=6,m=2,score_TPpl_min=2,score_TPpl=2]
kill @a[x=-81,y=6,z=172,dx=4,dy=3,dz=4,m=2,score_TPpl_min=2,score_TPpl=2]
execute @e[type=armor_stand,tag=TPStand,score_TPdg_min=0] ~ ~ ~ function ego:the_pit_3/use_degrading
