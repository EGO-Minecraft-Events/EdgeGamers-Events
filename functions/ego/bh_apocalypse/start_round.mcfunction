title @a actionbar {"text":"The doors are now open","color":"green"}
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG","True"]}
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG"]}
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 1
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 2
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 4
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 8
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 16
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 32
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 64
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 128
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 256
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 512
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 1024
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 2048
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 4096
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 8192
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 16384
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 32768
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 65536
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 131072
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 262144
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 524288
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 1048576
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 2097152
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 4194304
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 8388608
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 16777216
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 33554432
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 67108864
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 134217728
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 268435456
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 536870912
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHAprng 1073741824
minecraft:tp @a[x=-1565,y=47,z=-102,dx=74,dy=-3,dz=94,team=BHAh] -1544 7 -52
scoreboard players operation @s BHAti = &Countdown BHAcalc
scoreboard players set @s BHAst 2
