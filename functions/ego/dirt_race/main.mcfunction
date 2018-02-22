scoreboard players set @a gSA 0
scoreboard players set @a[x=18,y=11,z=-207,dx=49,dy=20,dz=45] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-2140645622] FLid 2140645621
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-2140645620] FLid 2140645621
execute @e[type=area_effect_cloud,tag=DirtR_cd] ~ ~ ~ function ego:dirt_race/countdown
kill @e[x=18,y=11,z=-207,dx=49,dy=20,dz=45,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] DirtRpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_DirtRpl_min=0,score_DirtRpl=0] ~ ~ ~ function ego:dirt_race/reset_player
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_gDE_min=1,score_gDE=1] ~ ~ ~ function ego:dirt_race/reset_player
scoreboard teams join DirtRr @a[score_gSA_min=1,score_gSA=1,team=!DirtRr]
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=DirtRr] minecraft:invisibility 3 0 true
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2,team=DirtRr] DirtRbc 0
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2,team=DirtRr] DirtRcp 0
execute @a[x=63,y=15,z=-204,dx=1,dy=1,c=1,m=2,team=DirtRr,score_DirtRbc_min=0,score_DirtRbc=0] ~ ~ ~ function ego:dirt_race/set_place0
execute @a[x=66,y=15,z=-204,dy=1,c=1,m=2,team=DirtRr,score_DirtRbc_min=0,score_DirtRbc=0] ~ ~ ~ function ego:dirt_race/set_place1
execute @a[x=61,y=15,z=-204,dy=1,c=1,m=2,team=DirtRr,score_DirtRbc_min=0,score_DirtRbc=0] ~ ~ ~ function ego:dirt_race/set_place2
execute @a[x=48,y=25,z=-179,dx=2,dy=4,score_DirtRcp=0] ~ ~ ~ function ego:dirt_race/set_checkpoint1
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=DirtRr,score_DirtRswim_min=1] ~ ~ ~ function ego:dirt_race/teleport_back
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=DirtRr,score_DirtRdive_min=1] ~ ~ ~ function ego:dirt_race/teleport_back
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_DirtRswim_min=1] DirtRswim 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_DirtRdive_min=1] DirtRdive 0
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=DirtRr] minecraft:night_vision 20 0 true
scoreboard players operation @a[score_gSA_min=1,score_gSA=1,m=2,score_DirtRbc_min=1] DirtRbc *= -1 constants
