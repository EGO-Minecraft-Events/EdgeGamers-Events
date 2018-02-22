scoreboard players set @a gSA 0
scoreboard players set @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1095056158] FLid 1095056157
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1095056156] FLid 1095056157
kill @e[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,tag=!VR1Entity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_VR1pl_min=1,score_VR1pl=1] VR1pl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_VR1pl_min=1,score_VR1pl=1] ~ ~ ~ function ego:virus_1/assign_teams
execute @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=1,score_VR1st=1] ~ ~ ~ function ego:virus_1/start_round
execute @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=2,score_VR1st=2] ~ ~ ~ function ego:virus_1/countdown
execute @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=3,score_VR1st=3] ~ ~ ~ function ego:virus_1/during_round
execute @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=4,score_VR1st=4] ~ ~ ~ function ego:virus_1/stop_round
execute @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=5,score_VR1st=5] ~ ~ ~ function ego:virus_1/wait_for_reset
execute @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=6,score_VR1st=6] ~ ~ ~ function ego:virus_1/reset_round
execute @e[type=armor_stand,tag=VR1Stand] ~ ~ ~ function ego:virus_1/set_glowing_effects
execute @e[type=armor_stand,tag=VR1Stand] ~ ~ ~ function ego:virus_1/calc_player_numbers
scoreboard players add @a VR1pl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_VR1pl_min=0,score_VR1pl=0] ~ ~ ~ function ego:virus_1/assign_teams
execute @a[m=2,score_VR1pl_min=1,score_VR1pl=1] ~ ~ ~ function ego:virus_1/teleport_players
