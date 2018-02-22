scoreboard players set @a gSA 0
scoreboard players set @a[x=-1194,y=45,z=-175,dx=72,dy=-42,dz=72] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-863633015] FLid 863633014
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-863633013] FLid 863633014
kill @e[x=-1194,y=45,z=-175,dx=72,dy=-42,dz=72,tag=!BHOEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHOpl_min=1,score_BHOpl=1] BHOpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHOpl_min=1,score_BHOpl=1] ~ ~ ~ function ego:bh_office/assign_teams
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=1,score_BHOst=1] ~ ~ ~ function ego:bh_office/start_round
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=2,score_BHOst=2] ~ ~ ~ function ego:bh_office/countdown
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=3,score_BHOst=3] ~ ~ ~ function ego:bh_office/during_round
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=4,score_BHOst=4] ~ ~ ~ function ego:bh_office/stop_round
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=5,score_BHOst=5] ~ ~ ~ function ego:bh_office/wait_for_reset
execute @e[type=armor_stand,tag=BHOStand,score_BHOst_min=6,score_BHOst=6] ~ ~ ~ function ego:bh_office/reset_round
execute @e[type=armor_stand,tag=BHOStand] ~ ~ ~ function ego:bh_office/set_glowing_effects
execute @e[type=armor_stand,tag=BHOStand] ~ ~ ~ function ego:bh_office/calc_player_numbers
scoreboard players add @a BHOpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHOpl_min=0,score_BHOpl=0] ~ ~ ~ function ego:bh_office/assign_teams
execute @a[m=2,score_BHOpl_min=1,score_BHOpl=1] ~ ~ ~ function ego:bh_office/teleport_players
