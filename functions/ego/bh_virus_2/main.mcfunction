scoreboard players set @a gSA 0
scoreboard players set @a[x=-107,y=2,z=-130,dx=193,dy=100,dz=241] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-98805619] FLid 98805618
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-98805617] FLid 98805618
kill @e[x=-107,y=2,z=-130,dx=193,dy=100,dz=241,tag=!BHVR2Entity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHVR2pl_min=1,score_BHVR2pl=1] BHVR2pl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHVR2pl_min=1,score_BHVR2pl=1] ~ ~ ~ function ego:bh_virus_2/assign_teams
execute @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=1,score_BHVR2st=1] ~ ~ ~ function ego:bh_virus_2/start_round
execute @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=2,score_BHVR2st=2] ~ ~ ~ function ego:bh_virus_2/countdown
execute @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=3,score_BHVR2st=3] ~ ~ ~ function ego:bh_virus_2/during_round
execute @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=4,score_BHVR2st=4] ~ ~ ~ function ego:bh_virus_2/stop_round
execute @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=5,score_BHVR2st=5] ~ ~ ~ function ego:bh_virus_2/wait_for_reset
execute @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2st_min=6,score_BHVR2st=6] ~ ~ ~ function ego:bh_virus_2/reset_round
execute @e[type=armor_stand,tag=BHVR2Stand] ~ ~ ~ function ego:bh_virus_2/set_glowing_effects
execute @e[type=armor_stand,tag=BHVR2Stand] ~ ~ ~ function ego:bh_virus_2/calc_player_numbers
scoreboard players add @a BHVR2pl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHVR2pl_min=0,score_BHVR2pl=0] ~ ~ ~ function ego:bh_virus_2/assign_teams
execute @a[m=2,score_BHVR2pl_min=1,score_BHVR2pl=1] ~ ~ ~ function ego:bh_virus_2/teleport_players
