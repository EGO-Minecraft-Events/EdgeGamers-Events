scoreboard players set @a gSA 0
scoreboard players set @a[x=110,y=3,z=148,dx=64,dy=15,dz=64] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1301307748] FLid 1301307747
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1301307746] FLid 1301307747
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] PCpl 0
execute @a[score_gSA_min=1,score_gSA=1,score_PCpl_min=0,score_PCpl=0,m=2] ~ ~ ~ function ego:pictionary/reset_player
kill @e[x=110,y=3,z=148,dx=64,dy=15,dz=64,type=item]
execute @e[type=armor_stand,tag=PCStand,score_PCst_min=1,score_PCst=1] ~ ~ ~ function ego:pictionary/start_round
execute @e[type=armor_stand,tag=PCStand,score_PCst_min=2,score_PCst=2] ~ ~ ~ function ego:pictionary/during_round
execute @e[type=armor_stand,tag=PCStand,score_PCst_min=3,score_PCst=3] ~ ~ ~ function ego:pictionary/stop_round
execute @a[m=2,score_PCpl_min=2,score_PCpl=2,score_gDE_min=1] ~ ~ ~ function ego:pictionary/reset_player
