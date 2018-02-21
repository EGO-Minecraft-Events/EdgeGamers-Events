scoreboard players set @a gSA 0
scoreboard players set @a[x=-1130,y=38,z=-93,dx=-42,dy=-34,dz=83] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-366421969] FLid 366421968
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-366421967] FLid 366421968
kill @e[x=-1130,y=38,z=-93,dx=-42,dy=-34,dz=83,tag=!BHRAEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHRApl_min=1,score_BHRApl=1] BHRApl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHRApl_min=1,score_BHRApl=1] ~ ~ ~ function ego:bh_rainbow/assign_teams
execute @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=1,score_BHRAst=1] ~ ~ ~ function ego:bh_rainbow/start_round
execute @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=2,score_BHRAst=2] ~ ~ ~ function ego:bh_rainbow/countdown
execute @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=3,score_BHRAst=3] ~ ~ ~ function ego:bh_rainbow/during_round
execute @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=4,score_BHRAst=4] ~ ~ ~ function ego:bh_rainbow/stop_round
execute @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=5,score_BHRAst=5] ~ ~ ~ function ego:bh_rainbow/wait_for_reset
execute @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=6,score_BHRAst=6] ~ ~ ~ function ego:bh_rainbow/reset_round
execute @e[type=armor_stand,tag=BHRAStand] ~ ~ ~ function ego:bh_rainbow/set_glowing_effects
execute @e[type=armor_stand,tag=BHRAStand] ~ ~ ~ function ego:bh_rainbow/calc_player_numbers
scoreboard players add @a BHRApl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHRApl_min=0,score_BHRApl=0] ~ ~ ~ function ego:bh_rainbow/assign_teams
execute @a[m=2,score_BHRApl_min=1,score_BHRApl=1] ~ ~ ~ function ego:bh_rainbow/teleport_players
