scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=_armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=704022040,score_FLgam=704022040] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"ER","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Emerald Race","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":" has stopped!","color":"red"}]}
scoreboard objectives remove ER
scoreboard objectives remove ERcd
scoreboard objectives remove ERcl
scoreboard objectives remove ERde
scoreboard teams remove ERr
kill @e[type=area_effect_cloud,tag=ERcountdown]
effect @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] clear
clear @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2]
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,score_EC_min=0,score_EC=0] FLbk 704022040
effect @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2] minecraft:instant_health 20 100 true
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2] FLtp 704022040
fill 269 19 -94 255 19 -94 emerald_block 0 replace air 0
fill 269 19 -98 255 19 -98 emerald_block 0 replace air 0
scoreboard players tag * remove ERLap
