scoreboard players set @a gSA 0
scoreboard players set @a[x=-1565,y=47,z=-102,dx=76,dy=-43,dz=96] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1203107458] FLid 1203107457
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1203107456] FLid 1203107457
kill @e[x=-1565,y=47,z=-102,dx=76,dy=-43,dz=96,tag=!BHAEntity,type=item]
scoreboard players set @a[m=2,score_gDE_min=1,score_gDE=1,score_BHApl_min=1,score_BHApl=1] BHApl 0
execute @a[m=2,score_gLG_min=1,score_gLG=1,score_BHApl_min=1,score_BHApl=1] ~ ~ ~ function ego:bh_apocalypse/assign_teams
execute @e[type=armor_stand,tag=BHAStand,score_BHAst_min=1,score_BHAst=1] ~ ~ ~ function ego:bh_apocalypse/start_round
execute @e[type=armor_stand,tag=BHAStand,score_BHAst_min=2,score_BHAst=2] ~ ~ ~ function ego:bh_apocalypse/countdown
execute @e[type=armor_stand,tag=BHAStand,score_BHAst_min=3,score_BHAst=3] ~ ~ ~ function ego:bh_apocalypse/during_round
execute @e[type=armor_stand,tag=BHAStand,score_BHAst_min=4,score_BHAst=4] ~ ~ ~ function ego:bh_apocalypse/stop_round
execute @e[type=armor_stand,tag=BHAStand,score_BHAst_min=5,score_BHAst=5] ~ ~ ~ function ego:bh_apocalypse/wait_for_reset
execute @e[type=armor_stand,tag=BHAStand,score_BHAst_min=6,score_BHAst=6] ~ ~ ~ function ego:bh_apocalypse/reset_round
execute @e[type=armor_stand,tag=BHAStand] ~ ~ ~ function ego:bh_apocalypse/set_glowing_effects
execute @e[type=armor_stand,tag=BHAStand] ~ ~ ~ function ego:bh_apocalypse/calc_player_numbers
scoreboard players add @a BHApl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHApl_min=0,score_BHApl=0] ~ ~ ~ function ego:bh_apocalypse/assign_teams
execute @a[m=2,score_BHApl_min=1,score_BHApl=1] ~ ~ ~ function ego:bh_apocalypse/teleport_players
