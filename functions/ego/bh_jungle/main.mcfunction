scoreboard players set @a gSA 0
scoreboard players set @a[x=-1046,y=55,z=-148,dx=-69,dy=-51,dz=60] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1023416592] FLid 1023416591
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1023416590] FLid 1023416591
kill @e[x=-1046,y=55,z=-148,dx=-69,dy=-51,dz=60,tag=!BHJEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHJpl_min=1,score_BHJpl=1] BHJpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHJpl_min=1,score_BHJpl=1] ~ ~ ~ function ego:bh_jungle/assign_teams
execute @e[type=armor_stand,tag=BHJStand,score_BHJst_min=1,score_BHJst=1] ~ ~ ~ function ego:bh_jungle/start_round
execute @e[type=armor_stand,tag=BHJStand,score_BHJst_min=2,score_BHJst=2] ~ ~ ~ function ego:bh_jungle/countdown
execute @e[type=armor_stand,tag=BHJStand,score_BHJst_min=3,score_BHJst=3] ~ ~ ~ function ego:bh_jungle/during_round
execute @e[type=armor_stand,tag=BHJStand,score_BHJst_min=4,score_BHJst=4] ~ ~ ~ function ego:bh_jungle/stop_round
execute @e[type=armor_stand,tag=BHJStand,score_BHJst_min=5,score_BHJst=5] ~ ~ ~ function ego:bh_jungle/wait_for_reset
execute @e[type=armor_stand,tag=BHJStand,score_BHJst_min=6,score_BHJst=6] ~ ~ ~ function ego:bh_jungle/reset_round
execute @e[type=armor_stand,tag=BHJStand] ~ ~ ~ function ego:bh_jungle/set_glowing_effects
execute @e[type=armor_stand,tag=BHJStand] ~ ~ ~ function ego:bh_jungle/calc_player_numbers
scoreboard players add @a BHJpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHJpl_min=0,score_BHJpl=0] ~ ~ ~ function ego:bh_jungle/assign_teams
execute @a[m=2,score_BHJpl_min=1,score_BHJpl=1] ~ ~ ~ function ego:bh_jungle/teleport_players
