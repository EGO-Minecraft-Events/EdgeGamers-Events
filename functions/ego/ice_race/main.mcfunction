scoreboard players set @a gSA 0
scoreboard players set @a[x=34,y=2,z=-64,dx=141,dy=69,dz=43] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-227577151] FLid 227577150
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-227577149] FLid 227577150
execute @e[type=area_effect_cloud,tag=IR_cd] ~ ~ ~ function ego:ice_race/countdown
kill @e[x=34,y=2,z=-64,dx=141,dy=69,dz=43,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] IRpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_IRpl_min=0,score_IRpl=0] ~ ~ ~ function ego:ice_race/reset_player
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_gDE_min=1,score_gDE=1] ~ ~ ~ function ego:ice_race/reset_player
scoreboard teams join IRr @a[score_gSA_min=1,score_gSA=1,team=!IRr]
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=IRr] minecraft:invisibility 3 0 true
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2,team=IRr] IRbc 0
execute @a[x=41,y=36,z=-32,dy=1,dz=1,c=1,m=2,team=IRr,score_IRbc_min=0,score_IRbc=0] ~ ~ ~ function ego:ice_race/set_place0
execute @a[x=41,y=36,z=-28,dy=1,c=1,m=2,team=IRr,score_IRbc_min=0,score_IRbc=0] ~ ~ ~ function ego:ice_race/set_place1
execute @a[x=41,y=36,z=-35,dy=1,c=1,m=2,team=IRr,score_IRbc_min=0,score_IRbc=0] ~ ~ ~ function ego:ice_race/set_place2
scoreboard players operation @a[score_gSA_min=1,score_gSA=1,m=2,score_IRbc_min=1] IRbc *= -1 constants
