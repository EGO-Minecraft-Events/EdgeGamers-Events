scoreboard players set @a gSA 0
scoreboard players set @a[x=-1127,y=50,z=-218,dx=-86,dy=-47,dz=38] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-244635864] FLid 244635863
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-244635862] FLid 244635863
kill @e[x=-1127,y=50,z=-218,dx=-86,dy=-47,dz=38,tag=!BHZEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHZpl_min=1,score_BHZpl=1] BHZpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHZpl_min=1,score_BHZpl=1] ~ ~ ~ function ego:bh_zelda/assign_teams
execute @e[type=armor_stand,tag=BHZStand,score_BHZst_min=1,score_BHZst=1] ~ ~ ~ function ego:bh_zelda/start_round
execute @e[type=armor_stand,tag=BHZStand,score_BHZst_min=2,score_BHZst=2] ~ ~ ~ function ego:bh_zelda/countdown
execute @e[type=armor_stand,tag=BHZStand,score_BHZst_min=3,score_BHZst=3] ~ ~ ~ function ego:bh_zelda/during_round
execute @e[type=armor_stand,tag=BHZStand,score_BHZst_min=4,score_BHZst=4] ~ ~ ~ function ego:bh_zelda/stop_round
execute @e[type=armor_stand,tag=BHZStand,score_BHZst_min=5,score_BHZst=5] ~ ~ ~ function ego:bh_zelda/wait_for_reset
execute @e[type=armor_stand,tag=BHZStand,score_BHZst_min=6,score_BHZst=6] ~ ~ ~ function ego:bh_zelda/reset_round
execute @e[type=armor_stand,tag=BHZStand] ~ ~ ~ function ego:bh_zelda/set_glowing_effects
execute @e[type=armor_stand,tag=BHZStand] ~ ~ ~ function ego:bh_zelda/calc_player_numbers
scoreboard players add @a BHZpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHZpl_min=0,score_BHZpl=0] ~ ~ ~ function ego:bh_zelda/assign_teams
execute @a[m=2,score_BHZpl_min=1,score_BHZpl=1] ~ ~ ~ function ego:bh_zelda/teleport_players
