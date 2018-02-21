scoreboard players set @a gSA 0
scoreboard players set @a[x=-1390,y=101,z=-13,dx=-92,dy=-97,dz=-92] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1317713610] FLid 1317713609
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1317713608] FLid 1317713609
kill @e[x=-1390,y=101,z=-13,dx=-92,dy=-97,dz=-92,tag=!BHREEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHREpl_min=1,score_BHREpl=1] BHREpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHREpl_min=1,score_BHREpl=1] ~ ~ ~ function ego:bh_resort/assign_teams
execute @e[type=armor_stand,tag=BHREStand,score_BHREst_min=1,score_BHREst=1] ~ ~ ~ function ego:bh_resort/start_round
execute @e[type=armor_stand,tag=BHREStand,score_BHREst_min=2,score_BHREst=2] ~ ~ ~ function ego:bh_resort/countdown
execute @e[type=armor_stand,tag=BHREStand,score_BHREst_min=3,score_BHREst=3] ~ ~ ~ function ego:bh_resort/during_round
execute @e[type=armor_stand,tag=BHREStand,score_BHREst_min=4,score_BHREst=4] ~ ~ ~ function ego:bh_resort/stop_round
execute @e[type=armor_stand,tag=BHREStand,score_BHREst_min=5,score_BHREst=5] ~ ~ ~ function ego:bh_resort/wait_for_reset
execute @e[type=armor_stand,tag=BHREStand,score_BHREst_min=6,score_BHREst=6] ~ ~ ~ function ego:bh_resort/reset_round
execute @e[type=armor_stand,tag=BHREStand] ~ ~ ~ function ego:bh_resort/set_glowing_effects
execute @e[type=armor_stand,tag=BHREStand] ~ ~ ~ function ego:bh_resort/calc_player_numbers
scoreboard players add @a BHREpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHREpl_min=0,score_BHREpl=0] ~ ~ ~ function ego:bh_resort/assign_teams
execute @a[m=2,score_BHREpl_min=1,score_BHREpl=1] ~ ~ ~ function ego:bh_resort/teleport_players
