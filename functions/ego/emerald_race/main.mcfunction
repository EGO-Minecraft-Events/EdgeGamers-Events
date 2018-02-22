scoreboard players set @a gSA 0
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1844105134] FLid 1844105133
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1844105132] FLid 1844105133
execute @e[type=area_effect_cloud,tag=ER_cd] ~ ~ ~ function ego:emerald_race/countdown
kill @e[x=219,y=5,z=-121,dx=75,dy=100,dz=51,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] ERpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_ERpl_min=0,score_ERpl=0] ~ ~ ~ function ego:emerald_race/reset_player
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_gDE_min=1,score_gDE=1] ~ ~ ~ function ego:emerald_race/reset_player
scoreboard teams join ERr @a[score_gSA_min=1,score_gSA=1,team=!ERr]
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=ERr] minecraft:invisibility 3 0 true
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=ERr] ~ ~ ~ function ego:emerald_race/check_lap
