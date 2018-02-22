scoreboard players set @a gSA 0
scoreboard players set @a[x=-1194,y=45,z=-175,dx=72,dy=-42,dz=72] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-354536010] FLid 354536009
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-354536008] FLid 354536009
kill @e[x=-1194,y=45,z=-175,dx=72,dy=-42,dz=72,tag=!BHOEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHOpl_min=1,score_BHOpl=1] BHOpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHOpl_min=1,score_BHOpl=1] ~ ~ ~ function ego:bh_old/assign_teams
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=1,score_BHOst=1] ~ ~ ~ function ego:bh_old/start_round
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=2,score_BHOst=2] ~ ~ ~ function ego:bh_old/countdown
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=3,score_BHOst=3] ~ ~ ~ function ego:bh_old/during_round
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=4,score_BHOst=4] ~ ~ ~ function ego:bh_old/stop_round
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=5,score_BHOst=5] ~ ~ ~ function ego:bh_old/wait_for_reset
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=6,score_BHOst=6] ~ ~ ~ function ego:bh_old/reset_round
execute @e[type=armor_stand,tag=BHOStand] ~ ~ ~ function ego:bh_old/set_glowing_effects
execute @e[type=armor_stand,tag=BHOStand] ~ ~ ~ function ego:bh_old/calc_player_numbers
scoreboard players add @a BHOpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHOpl_min=0,score_BHOpl=0] ~ ~ ~ function ego:bh_old/assign_teams
execute @a[m=2,score_BHOpl_min=1,score_BHOpl=1] ~ ~ ~ function ego:bh_old/teleport_players
