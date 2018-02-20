scoreboard players set @a gSA 0
scoreboard players set @a[x=419,y=4,z=-47,dx=79,dy=40,dz=32] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1290793336] FLid 1290793335
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1290793334] FLid 1290793335
execute @e[type=area_effect_cloud,tag=SaltR_cd] ~ ~ ~ function ego:salt_race/countdown
kill @e[x=419,y=4,z=-47,dx=79,dy=40,dz=32,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] SaltRpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_SaltRpl_min=0,score_SaltRpl=0] ~ ~ ~ function ego:salt_race/reset_player
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_gDE_min=1,score_gDE=1] ~ ~ ~ function ego:salt_race/reset_player
scoreboard teams join SaltRr @a[score_gSA_min=1,score_gSA=1,team=!SaltRr]
effect @a[score_gSA_min=1,score_gSA=1,m=2,team=SaltRr] minecraft:invisibility 3 0 true
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2,team=SaltRr] SaltRbc 0
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2,team=SaltRr] SaltRcp 0
execute @a[x=459,y=13,z=-35,dy=1,c=1,m=2,team=SaltRr,score_SaltRbc_min=0,score_SaltRbc=0] ~ ~ ~ function ego:salt_race/set_place0
execute @a[x=459,y=13,z=-33,dy=1,c=1,m=2,team=SaltRr,score_SaltRbc_min=0,score_SaltRbc=0] ~ ~ ~ function ego:salt_race/set_place1
execute @a[x=459,y=13,z=-31,dy=1,c=1,m=2,team=SaltRr,score_SaltRbc_min=0,score_SaltRbc=0] ~ ~ ~ function ego:salt_race/set_place2
execute @a[x=489,y=10,z=-34,dx=2,dy=3,dz=2,score_SaltRcp=0] ~ ~ ~ function ego:salt_race/set_checkpoint1
execute @a[x=450,y=15,z=-44,dx=2,dy=3,dz=2,score_SaltRcp=1] ~ ~ ~ function ego:salt_race/set_checkpoint2
execute @a[x=422,y=11,z=-34,dx=2,dy=4,dz=2,score_SaltRcp=2] ~ ~ ~ function ego:salt_race/set_checkpoint3
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=SaltRr] ~ ~ ~ detect ~ ~-1.3 ~ hay_block -1 function ego:salt_race/teleport_back
scoreboard players operation @a[score_gSA_min=1,score_gSA=1,m=2,score_SaltRbc_min=1] SaltRbc *= -1 constants
