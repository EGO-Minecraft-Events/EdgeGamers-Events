scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgmd_min=704022040,score_FLgmd=704022040] FLgmd 0
scoreboard objectives remove ER
scoreboard objectives remove ERcd
scoreboard objectives remove ERcl
scoreboard objectives remove ERde
scoreboard teams remove ERr
kill @e[type=area_effect_cloud,tag=ERcd]
effect @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] clear
clear @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2]
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,score_EC_min=0,score_EC=0] FLbk 704022040
effect @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2] minecraft:instant_health 20 100 true
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2] FLtp 704022040
fill 269 19 -94 255 19 -94 redstone_block 0 replace stonebrick 0
fill 269 19 -98 255 19 -98 stonebrick 0 replace redstone_block 0
scoreboard players tag * remove ERLap
