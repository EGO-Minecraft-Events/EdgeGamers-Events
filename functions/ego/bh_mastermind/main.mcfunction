scoreboard players set @a gSA 0
scoreboard players set @a[x=-1213,y=45,z=-222,dx=73,dy=-41,dz=-72] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-498683801] FLid 498683800
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-498683799] FLid 498683800
kill @e[x=-1213,y=45,z=-222,dx=73,dy=-41,dz=-72,tag=!BHMMEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHMMpl_min=1,score_BHMMpl=1] BHMMpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHMMpl_min=1,score_BHMMpl=1] ~ ~ ~ function ego:bh_mastermind/assign_teams
execute @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=1,score_BHMMst=1] ~ ~ ~ function ego:bh_mastermind/start_round
execute @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=2,score_BHMMst=2] ~ ~ ~ function ego:bh_mastermind/countdown
execute @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=3,score_BHMMst=3] ~ ~ ~ function ego:bh_mastermind/during_round
execute @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=4,score_BHMMst=4] ~ ~ ~ function ego:bh_mastermind/stop_round
execute @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=5,score_BHMMst=5] ~ ~ ~ function ego:bh_mastermind/wait_for_reset
execute @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=6,score_BHMMst=6] ~ ~ ~ function ego:bh_mastermind/reset_round
execute @e[type=armor_stand,tag=BHMMStand] ~ ~ ~ function ego:bh_mastermind/set_glowing_effects
execute @e[type=armor_stand,tag=BHMMStand] ~ ~ ~ function ego:bh_mastermind/calc_player_numbers
scoreboard players add @a BHMMpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMMpl_min=0,score_BHMMpl=0] ~ ~ ~ function ego:bh_mastermind/assign_teams
execute @a[m=2,score_BHMMpl_min=1,score_BHMMpl=1] ~ ~ ~ function ego:bh_mastermind/teleport_players
