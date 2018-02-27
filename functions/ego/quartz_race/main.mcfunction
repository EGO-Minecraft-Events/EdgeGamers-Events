scoreboard players set @a gSA 0
scoreboard players set @a[x=219,y=4,z=-177,dx=77,dy=100,dz=38] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1964796835] FLid 1964796834
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1964796833] FLid 1964796834
execute @e[type=area_effect_cloud,tag=QR_cd] ~ ~ ~ function ego:quartz_race/countdown
kill @e[x=219,y=4,z=-177,dx=77,dy=100,dz=38,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] QRpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_QRpl_min=0,score_QRpl=0] ~ ~ ~ function ego:quartz_race/reset_player
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_gDE_min=1,score_gDE=1] ~ ~ ~ function ego:quartz_race/reset_player
scoreboard teams join QRr @a[score_gSA_min=1,score_gSA=1,team=!QRr]
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=QRr] minecraft:invisibility 3 0 true
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=QRr] ~ ~ ~ function ego:quartz_race/check_lap
