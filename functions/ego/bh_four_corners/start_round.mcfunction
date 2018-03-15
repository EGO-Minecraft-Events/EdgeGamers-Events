title @a actionbar {"text":"The doors are now open","color":"green"}
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG","True"]}
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG"]}
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 1
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 2
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 4
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 8
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 16
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 32
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 64
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 128
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 256
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 512
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 1024
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 2048
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 4096
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 8192
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 16384
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 32768
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 65536
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 131072
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 262144
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 524288
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 1048576
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 2097152
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 4194304
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 8388608
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 16777216
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 33554432
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 67108864
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 134217728
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 268435456
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 536870912
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHFCprng 1073741824
minecraft:tp @a[x=-1358,y=111,z=-190,dx=89,dy=-10,dz=-89,team=BHFCh] -1313 74 -235
scoreboard players operation @s BHFCti = &Countdown BHFCcalc
scoreboard players set @s BHFCst 2
