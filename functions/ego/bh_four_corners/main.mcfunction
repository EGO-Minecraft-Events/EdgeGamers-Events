scoreboard players set @a gSA 0
scoreboard players set @a[x=-1358,y=111,z=-190,dx=90,dy=-107,dz=-90] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-526354107] FLid 526354106
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-526354105] FLid 526354106
kill @e[x=-1358,y=111,z=-190,dx=90,dy=-107,dz=-90,tag=!BHFCEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHFCpl_min=0,score_BHFCpl=2] BHFCpl 0
scoreboard players add @a BHFCpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHFCpl_min=0,score_BHFCpl=0] ~ ~ ~ function ego:bh_four_corners/reset_player
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHFCpl_min=1,score_BHFCpl=2] ~ ~ ~ function ego:bh_four_corners/reset_player
execute @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=0,score_BHFCst=0] ~ ~ ~ function ego:bh_four_corners/wait_for_start
execute @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=1,score_BHFCst=1] ~ ~ ~ function ego:bh_four_corners/start_round
execute @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=2,score_BHFCst=2] ~ ~ ~ function ego:bh_four_corners/countdown
execute @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=3,score_BHFCst=3] ~ ~ ~ function ego:bh_four_corners/during_round
execute @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=4,score_BHFCst=4] ~ ~ ~ function ego:bh_four_corners/stop_round
execute @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=5,score_BHFCst=5] ~ ~ ~ function ego:bh_four_corners/wait_for_reset
execute @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=6,score_BHFCst=6] ~ ~ ~ function ego:bh_four_corners/reset_round
execute @e[type=armor_stand,tag=BHFCStand] ~ ~ ~ function ego:bh_four_corners/set_glowing_effects
execute @e[type=armor_stand,tag=BHFCStand] ~ ~ ~ function ego:bh_four_corners/calc_player_numbers
execute @a[x=-1358,y=111,z=-190,dx=89,dy=-10,dz=-89,m=2,score_BHFCpl_min=1,score_BHFCpl=2] ~ ~ ~ function ego:bh_four_corners/teleport_players
