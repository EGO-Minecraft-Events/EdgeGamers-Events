scoreboard players set @a gSA 0
scoreboard players set @a[x=-1047,y=42,z=-190,dx=-90,dy=-39,dz=-42] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1666503594] FLid 1666503593
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1666503592] FLid 1666503593
kill @e[x=-1047,y=42,z=-190,dx=-90,dy=-39,dz=-42,tag=!BHHEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHHpl_min=1,score_BHHpl=1] BHHpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHHpl_min=1,score_BHHpl=1] ~ ~ ~ function ego:bh_hospital/assign_teams
execute @e[type=armor_stand,tag=BHHStand,score_BHHst_min=1,score_BHHst=1] ~ ~ ~ function ego:bh_hospital/start_round
execute @e[type=armor_stand,tag=BHHStand,score_BHHst_min=2,score_BHHst=2] ~ ~ ~ function ego:bh_hospital/countdown
execute @e[type=armor_stand,tag=BHHStand,score_BHHst_min=3,score_BHHst=3] ~ ~ ~ function ego:bh_hospital/during_round
execute @e[type=armor_stand,tag=BHHStand,score_BHHst_min=4,score_BHHst=4] ~ ~ ~ function ego:bh_hospital/stop_round
execute @e[type=armor_stand,tag=BHHStand,score_BHHst_min=5,score_BHHst=5] ~ ~ ~ function ego:bh_hospital/wait_for_reset
execute @e[type=armor_stand,tag=BHHStand,score_BHHst_min=6,score_BHHst=6] ~ ~ ~ function ego:bh_hospital/reset_round
execute @e[type=armor_stand,tag=BHHStand] ~ ~ ~ function ego:bh_hospital/set_glowing_effects
execute @e[type=armor_stand,tag=BHHStand] ~ ~ ~ function ego:bh_hospital/calc_player_numbers
scoreboard players add @a BHHpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHpl_min=0,score_BHHpl=0] ~ ~ ~ function ego:bh_hospital/assign_teams
execute @a[m=2,score_BHHpl_min=1,score_BHHpl=1] ~ ~ ~ function ego:bh_hospital/teleport_players
