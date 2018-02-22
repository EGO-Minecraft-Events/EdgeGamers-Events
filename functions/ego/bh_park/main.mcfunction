scoreboard players set @a gSA 0
scoreboard players set @a[x=-1263,y=38,z=-189,dx=42,dy=-34,dz=-99] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-818788036] FLid 818788035
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-818788034] FLid 818788035
kill @e[x=-1263,y=38,z=-189,dx=42,dy=-34,dz=-99,tag=!BHPEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHPpl_min=1,score_BHPpl=1] BHPpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHPpl_min=1,score_BHPpl=1] ~ ~ ~ function ego:bh_park/assign_teams
execute @e[type=armor_stand,tag=BHPStand,score_BHPst_min=1,score_BHPst=1] ~ ~ ~ function ego:bh_park/start_round
execute @e[type=armor_stand,tag=BHPStand,score_BHPst_min=2,score_BHPst=2] ~ ~ ~ function ego:bh_park/countdown
execute @e[type=armor_stand,tag=BHPStand,score_BHPst_min=3,score_BHPst=3] ~ ~ ~ function ego:bh_park/during_round
execute @e[type=armor_stand,tag=BHPStand,score_BHPst_min=4,score_BHPst=4] ~ ~ ~ function ego:bh_park/stop_round
execute @e[type=armor_stand,tag=BHPStand,score_BHPst_min=5,score_BHPst=5] ~ ~ ~ function ego:bh_park/wait_for_reset
execute @e[type=armor_stand,tag=BHPStand,score_BHPst_min=6,score_BHPst=6] ~ ~ ~ function ego:bh_park/reset_round
execute @e[type=armor_stand,tag=BHPStand] ~ ~ ~ function ego:bh_park/set_glowing_effects
execute @e[type=armor_stand,tag=BHPStand] ~ ~ ~ function ego:bh_park/calc_player_numbers
scoreboard players add @a BHPpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHPpl_min=0,score_BHPpl=0] ~ ~ ~ function ego:bh_park/assign_teams
execute @a[m=2,score_BHPpl_min=1,score_BHPpl=1] ~ ~ ~ function ego:bh_park/teleport_players
