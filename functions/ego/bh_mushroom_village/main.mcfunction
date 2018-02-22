scoreboard players set @a gSA 0
scoreboard players set @a[x=-1117,y=48,z=-153,dx=73,dy=-44,dz=-72] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-607841733] FLid 607841732
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-607841731] FLid 607841732
kill @e[x=-1117,y=48,z=-153,dx=73,dy=-44,dz=-72,tag=!BHMVEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHMVpl_min=1,score_BHMVpl=1] BHMVpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHMVpl_min=1,score_BHMVpl=1] ~ ~ ~ function ego:bh_mushroom_village/assign_teams
execute @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=1,score_BHMVst=1] ~ ~ ~ function ego:bh_mushroom_village/start_round
execute @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=2,score_BHMVst=2] ~ ~ ~ function ego:bh_mushroom_village/countdown
execute @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=3,score_BHMVst=3] ~ ~ ~ function ego:bh_mushroom_village/during_round
execute @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=4,score_BHMVst=4] ~ ~ ~ function ego:bh_mushroom_village/stop_round
execute @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=5,score_BHMVst=5] ~ ~ ~ function ego:bh_mushroom_village/wait_for_reset
execute @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=6,score_BHMVst=6] ~ ~ ~ function ego:bh_mushroom_village/reset_round
execute @e[type=armor_stand,tag=BHMVStand] ~ ~ ~ function ego:bh_mushroom_village/set_glowing_effects
execute @e[type=armor_stand,tag=BHMVStand] ~ ~ ~ function ego:bh_mushroom_village/calc_player_numbers
scoreboard players add @a BHMVpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMVpl_min=0,score_BHMVpl=0] ~ ~ ~ function ego:bh_mushroom_village/assign_teams
execute @a[m=2,score_BHMVpl_min=1,score_BHMVpl=1] ~ ~ ~ function ego:bh_mushroom_village/teleport_players
