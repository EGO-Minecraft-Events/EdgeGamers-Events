scoreboard players set @a gSA 0
scoreboard players set @a[x=-107,y=2,z=-130,dx=193,dy=100,dz=241] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-763826196] FLid 763826195
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-763826194] FLid 763826195
kill @e[x=-107,y=2,z=-130,dx=193,dy=100,dz=241,tag=!VR2Entity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_VR2pl_min=0,score_VR2pl=2] VR2pl 0
scoreboard players add @a VR2pl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_VR2pl_min=0,score_VR2pl=0] ~ ~ ~ function ego:virus_2/reset_player
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_VR2pl_min=1,score_VR2pl=2] ~ ~ ~ function ego:virus_2/reset_player
execute @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=0,score_VR2st=0] ~ ~ ~ function ego:virus_2/wait_for_start
execute @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=1,score_VR2st=1] ~ ~ ~ function ego:virus_2/start_round
execute @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=2,score_VR2st=2] ~ ~ ~ function ego:virus_2/countdown
execute @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=3,score_VR2st=3] ~ ~ ~ function ego:virus_2/during_round
execute @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=4,score_VR2st=4] ~ ~ ~ function ego:virus_2/stop_round
execute @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=5,score_VR2st=5] ~ ~ ~ function ego:virus_2/wait_for_reset
execute @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=6,score_VR2st=6] ~ ~ ~ function ego:virus_2/reset_round
execute @e[type=armor_stand,tag=VR2Stand] ~ ~ ~ function ego:virus_2/set_glowing_effects
execute @e[type=armor_stand,tag=VR2Stand] ~ ~ ~ function ego:virus_2/calc_player_numbers
execute @a[x=-77,y=56,z=-85,dx=31,dy=5,dz=31,m=2,score_VR2pl_min=1,score_VR2pl=2] ~ ~ ~ function ego:virus_2/teleport_players
