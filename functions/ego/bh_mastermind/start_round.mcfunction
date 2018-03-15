title @a actionbar {"text":"The doors are now open","color":"green"}
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG","True"]}
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG"]}
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 1
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 2
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 4
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 8
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 16
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 32
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 64
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 128
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 256
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 512
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 1024
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 2048
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 4096
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 8192
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 16384
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 32768
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 65536
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 131072
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 262144
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 524288
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 1048576
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 2097152
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 4194304
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 8388608
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 16777216
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 33554432
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 67108864
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 134217728
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 268435456
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 536870912
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHMMprng 1073741824
minecraft:tp @a[x=-1213,y=51,z=-222,dx=71,dy=-6,dz=-71,team=BHMMh] -1177 21 -273
scoreboard players operation @s BHMMti = &Countdown BHMMcalc
scoreboard players set @s BHMMst 2
