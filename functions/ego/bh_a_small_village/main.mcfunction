scoreboard players set @a gSA 0
scoreboard players set @a[x=-1393,y=38,z=-271,dx=-161,dy=-35,dz=162] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-244577679] FLid 244577678
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-244577677] FLid 244577678
kill @e[x=-1393,y=38,z=-271,dx=-161,dy=-35,dz=162,tag=!BHASVEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHASVpl_min=0,score_BHASVpl=2] BHASVpl 0
scoreboard players add @a BHASVpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHASVpl_min=0,score_BHASVpl=0] ~ ~ ~ function ego:bh_a_small_village/reset_player
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHASVpl_min=1,score_BHASVpl=2] ~ ~ ~ function ego:bh_a_small_village/reset_player
execute @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=0,score_BHASVst=0] ~ ~ ~ function ego:bh_a_small_village/wait_for_start
execute @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=1,score_BHASVst=1] ~ ~ ~ function ego:bh_a_small_village/start_round
execute @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=2,score_BHASVst=2] ~ ~ ~ function ego:bh_a_small_village/countdown
execute @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=3,score_BHASVst=3] ~ ~ ~ function ego:bh_a_small_village/during_round
execute @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=4,score_BHASVst=4] ~ ~ ~ function ego:bh_a_small_village/stop_round
execute @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=5,score_BHASVst=5] ~ ~ ~ function ego:bh_a_small_village/wait_for_reset
execute @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=6,score_BHASVst=6] ~ ~ ~ function ego:bh_a_small_village/reset_round
execute @e[type=armor_stand,tag=BHASVStand] ~ ~ ~ function ego:bh_a_small_village/set_glowing_effects
execute @e[type=armor_stand,tag=BHASVStand] ~ ~ ~ function ego:bh_a_small_village/calc_player_numbers
execute @a[x=-1443,y=15,z=-230,dx=7,dy=-4,dz=4,m=2,score_BHASVpl_min=1,score_BHASVpl=2] ~ ~ ~ function ego:bh_a_small_village/teleport_players
