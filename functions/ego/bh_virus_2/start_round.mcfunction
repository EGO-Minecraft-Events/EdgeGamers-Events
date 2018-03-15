title @a actionbar {"text":"The doors are now open","color":"green"}
execute @a ~ ~ ~ playsound minecraft:entity.player.levelup voice @s
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG","True"]}
summon area_effect_cloud ~ ~ ~ {Tags:["PRNG"]}
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 1
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 2
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 4
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 8
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 16
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 32
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 64
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 128
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 256
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 512
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 1024
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 2048
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 4096
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 8192
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 16384
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 32768
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 65536
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 131072
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 262144
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 524288
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 1048576
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 2097152
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 4194304
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 8388608
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 16777216
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 33554432
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 67108864
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 134217728
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 268435456
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 536870912
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players add &Seed BHVR2prng 1073741824
minecraft:tp @a[x=-77,y=56,z=-85,dx=31,dy=5,dz=31,team=BHVR2h] -61.0 40 -69.0
scoreboard players operation @s BHVR2ti = &Countdown BHVR2calc
scoreboard players set @s BHVR2st 2
