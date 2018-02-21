scoreboard players set @a gSA 0
scoreboard players set @a[x=-1213,y=45,z=-222,dx=73,dy=-41,dz=-72] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1807172852] FLid 1807172851
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1807172850] FLid 1807172851
kill @e[x=-1213,y=45,z=-222,dx=73,dy=-41,dz=-72,tag=!BHMEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHMpl_min=1,score_BHMpl=1] BHMpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHMpl_min=1,score_BHMpl=1] ~ ~ ~ function ego:bh_mastermind/assign_teams
execute @e[type=armor_stand,tag=BHMStand,score_BHMst_min=1,score_BHMst=1] ~ ~ ~ function ego:bh_mastermind/start_round
execute @e[type=armor_stand,tag=BHMStand,score_BHMst_min=2,score_BHMst=2] ~ ~ ~ function ego:bh_mastermind/countdown
execute @e[type=armor_stand,tag=BHMStand,score_BHMst_min=3,score_BHMst=3] ~ ~ ~ function ego:bh_mastermind/during_round
execute @e[type=armor_stand,tag=BHMStand,score_BHMst_min=4,score_BHMst=4] ~ ~ ~ function ego:bh_mastermind/stop_round
execute @e[type=armor_stand,tag=BHMStand,score_BHMst_min=5,score_BHMst=5] ~ ~ ~ function ego:bh_mastermind/wait_for_reset
execute @e[type=armor_stand,tag=BHMStand,score_BHMst_min=6,score_BHMst=6] ~ ~ ~ function ego:bh_mastermind/reset_round
execute @e[type=armor_stand,tag=BHMStand] ~ ~ ~ function ego:bh_mastermind/set_glowing_effects
execute @e[type=armor_stand,tag=BHMStand] ~ ~ ~ function ego:bh_mastermind/calc_player_numbers
scoreboard players add @a BHMpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMpl_min=0,score_BHMpl=0] ~ ~ ~ function ego:bh_mastermind/assign_teams
execute @a[m=2,score_BHMpl_min=1,score_BHMpl=1] ~ ~ ~ function ego:bh_mastermind/teleport_players
