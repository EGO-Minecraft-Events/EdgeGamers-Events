scoreboard players set @a gSA 0
scoreboard players set @a[x=206,y=4,z=-57,dx=49,dy=100,dz=39] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-878514328] FLid 878514327
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-878514326] FLid 878514327
execute @e[type=area_effect_cloud,tag=DR_cd] ~ ~ ~ function ego:diamond_race/countdown
kill @e[x=206,y=4,z=-57,dx=49,dy=100,dz=39,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] DRpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_DRpl_min=0,score_DRpl=0] ~ ~ ~ function ego:diamond_race/reset_player
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_gDE_min=1,score_gDE=1] ~ ~ ~ function ego:diamond_race/reset_player
scoreboard teams join DRr @a[score_gSA_min=1,score_gSA=1,team=!DRr]
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=DRr] minecraft:invisibility 3 0 true
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=DRr] ~ ~ ~ function ego:diamond_race/check_lap
