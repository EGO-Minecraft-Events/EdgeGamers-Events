scoreboard players set @a gSA 0
scoreboard players set @a[x=21,y=4,z=-88,dx=61,dy=100,dz=21] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-720573390] FLid 720573389
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-720573388] FLid 720573389
execute @e[type=area_effect_cloud,tag=SR_cd] ~ ~ ~ function ego:slow_race/countdown
kill @e[x=21,y=4,z=-88,dx=61,dy=100,dz=21,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] SRpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_SRpl_min=0,score_SRpl=0] ~ ~ ~ function ego:slow_race/reset_player
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_gDE_min=1,score_gDE=1] ~ ~ ~ function ego:slow_race/reset_player
scoreboard teams join SRr @a[score_gSA_min=1,score_gSA=1,team=!SRr]
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=SRr] minecraft:invisibility 3 0 true
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2,team=SRr] SRbc 0
execute @a[x=70,y=13,z=-80,dy=1,c=1,m=2,team=SRr,score_SRbc_min=0,score_SRbc=0] ~ ~ ~ function ego:slow_race/set_place0
execute @a[x=70,y=13,z=-78,dy=1,c=1,m=2,team=SRr,score_SRbc_min=0,score_SRbc=0] ~ ~ ~ function ego:slow_race/set_place1
execute @a[x=70,y=13,z=-82,dy=1,c=1,m=2,team=SRr,score_SRbc_min=0,score_SRbc=0] ~ ~ ~ function ego:slow_race/set_place2
scoreboard players operation @a[score_gSA_min=1,score_gSA=1,m=2,score_SRbc_min=1] SRbc *= -1 constants
