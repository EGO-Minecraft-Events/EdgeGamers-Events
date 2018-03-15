title @a actionbar {"text":"The doors are now open","color":"green"}
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG","True"]}
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG"]}
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 1
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 2
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 4
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 8
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 16
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 32
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 64
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 128
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 256
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 512
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 1024
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 2048
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 4096
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 8192
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 16384
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 32768
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 65536
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 131072
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 262144
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 524288
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 1048576
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 2097152
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 4194304
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 8388608
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 16777216
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 33554432
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 67108864
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 134217728
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 268435456
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 536870912
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHHDprng 1073741824
minecraft:tp @a[x=-1120,y=28,z=-60,dx=73,dy=-4,dz=49,team=BHHDh] -1103 7 -35 -90 0
scoreboard players operation @s BHHDti = &Countdown BHHDcalc
scoreboard players set @s BHHDst 2
