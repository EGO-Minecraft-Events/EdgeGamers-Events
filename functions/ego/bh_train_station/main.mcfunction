scoreboard players set @a gSA 0
scoreboard players set @a[x=-1208,y=34,z=-186,dx=-176,dy=-30,dz=176] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-993875353] FLid 993875352
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-993875351] FLid 993875352
kill @e[x=-1208,y=34,z=-186,dx=-176,dy=-30,dz=176,tag=!BHTSEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHTSpl_min=1,score_BHTSpl=1] BHTSpl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHTSpl_min=1,score_BHTSpl=1] ~ ~ ~ function ego:bh_train_station/assign_teams
execute @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=1,score_BHTSst=1] ~ ~ ~ function ego:bh_train_station/start_round
execute @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=2,score_BHTSst=2] ~ ~ ~ function ego:bh_train_station/countdown
execute @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=3,score_BHTSst=3] ~ ~ ~ function ego:bh_train_station/during_round
execute @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=4,score_BHTSst=4] ~ ~ ~ function ego:bh_train_station/stop_round
execute @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=5,score_BHTSst=5] ~ ~ ~ function ego:bh_train_station/wait_for_reset
execute @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=6,score_BHTSst=6] ~ ~ ~ function ego:bh_train_station/reset_round
execute @e[type=armor_stand,tag=BHTSStand] ~ ~ ~ function ego:bh_train_station/set_glowing_effects
execute @e[type=armor_stand,tag=BHTSStand] ~ ~ ~ function ego:bh_train_station/calc_player_numbers
scoreboard players add @a BHTSpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHTSpl_min=0,score_BHTSpl=0] ~ ~ ~ function ego:bh_train_station/assign_teams
execute @a[m=2,score_BHTSpl_min=1,score_BHTSpl=1] ~ ~ ~ function ego:bh_train_station/teleport_players
