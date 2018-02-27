scoreboard players set @a gSA 0
scoreboard players set @a[x=32,y=4,z=-108,dx=48,dy=100,dz=15] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1061722157] FLid 1061722156
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1061722155] FLid 1061722156
execute @e[type=area_effect_cloud,tag=NR_cd] ~ ~ ~ function ego:nether_race/countdown
kill @e[x=32,y=4,z=-108,dx=48,dy=100,dz=15,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] NRpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_NRpl_min=0,score_NRpl=0] ~ ~ ~ function ego:nether_race/reset_player
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_gDE_min=1,score_gDE=1] ~ ~ ~ function ego:nether_race/reset_player
scoreboard teams join NRr @a[score_gSA_min=1,score_gSA=1,team=!NRr]
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=NRr] minecraft:invisibility 3 0 true
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2,team=NRr] NRbc 0
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2,team=NRr] NRcp 0
execute @a[x=73,y=14,z=-102,dy=1,c=1,m=2,team=NRr,score_NRbc_min=0,score_NRbc=0] ~ ~ ~ function ego:nether_race/set_place0
execute @a[x=73,y=14,z=-100,dy=1,c=1,m=2,team=NRr,score_NRbc_min=0,score_NRbc=0] ~ ~ ~ function ego:nether_race/set_place1
execute @a[x=73,y=14,z=-104,dy=1,c=1,m=2,team=NRr,score_NRbc_min=0,score_NRbc=0] ~ ~ ~ function ego:nether_race/set_place2
execute @a[score_gSA_min=1,score_gSA=1,m=2] ~ ~ ~ detect ~ ~-0.3 ~ magma -1 function ego:nether_race/teleport_back
effect @a[score_gSA_min=1,score_gSA=1,m=2] minecraft:fire_resistance 3 0 true
scoreboard players operation @a[score_gSA_min=1,score_gSA=1,m=2,score_NRbc_min=1] NRbc *= -1 constants
