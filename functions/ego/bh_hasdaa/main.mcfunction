scoreboard players set @a gSA 0
scoreboard players set @a[x=-1120,y=28,z=-10,dx=76,dy=-24,dz=-74] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-478919105] FLid 478919104
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-478919103] FLid 478919104
kill @e[x=-1120,y=28,z=-10,dx=76,dy=-24,dz=-74,tag=!BHHDEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHHDpl_min=1,score_BHHDpl=1] BHHDpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHHDpl_min=1,score_BHHDpl=1] ~ ~ ~ function ego:bh_hasdaa/assign_teams
execute @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=1,score_BHHDst=1] ~ ~ ~ function ego:bh_hasdaa/start_round
execute @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=2,score_BHHDst=2] ~ ~ ~ function ego:bh_hasdaa/countdown
execute @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=3,score_BHHDst=3] ~ ~ ~ function ego:bh_hasdaa/during_round
execute @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=4,score_BHHDst=4] ~ ~ ~ function ego:bh_hasdaa/stop_round
execute @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=5,score_BHHDst=5] ~ ~ ~ function ego:bh_hasdaa/wait_for_reset
execute @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=6,score_BHHDst=6] ~ ~ ~ function ego:bh_hasdaa/reset_round
execute @e[type=armor_stand,tag=BHHDStand] ~ ~ ~ function ego:bh_hasdaa/set_glowing_effects
execute @e[type=armor_stand,tag=BHHDStand] ~ ~ ~ function ego:bh_hasdaa/calc_player_numbers
scoreboard players add @a BHHDpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHDpl_min=0,score_BHHDpl=0] ~ ~ ~ function ego:bh_hasdaa/assign_teams
execute @a[m=2,score_BHHDpl_min=1,score_BHHDpl=1] ~ ~ ~ function ego:bh_hasdaa/teleport_players
