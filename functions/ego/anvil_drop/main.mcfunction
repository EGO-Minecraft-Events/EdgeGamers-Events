scoreboard players set @a gSA 0
scoreboard players set @a[x=-38,y=0,z=76,dx=22,dy=35,dz=22] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-333805819] FLid 333805818
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-333805817] FLid 333805818
clear @a[score_gSA_min=1,score_gSA=1] anvil
kill @e[x=-38,y=0,z=76,dx=22,dy=35,dz=22,type=item]
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] ADpl 0
execute @a[score_gSA_min=1,score_gSA=1,score_ADpl_min=0,score_ADpl=0,m=2] ~ ~ ~ function ego:anvil_drop/reset_player
execute @a[score_gDE_min=1,score_gDE=1,score_ADpl_min=2,score_ADpl=2,m=2] ~ ~ ~ function ego:anvil_drop/reset_player
execute @e[type=armor_stand,tag=ADStand,score_ADst_min=1,score_ADst=1] ~ ~ ~ function ego:anvil_drop/start_round
execute @e[type=armor_stand,tag=ADStand,score_ADst_min=2,score_ADst=2] ~ ~ ~ function ego:anvil_drop/countdown
execute @e[type=armor_stand,tag=ADStand,score_ADst_min=3,score_ADst=3] ~ ~ ~ function ego:anvil_drop/during_round
execute @e[type=armor_stand,tag=ADStand,score_ADst_min=4,score_ADst=4] ~ ~ ~ function ego:anvil_drop/stop_round
execute @a[score_gSA_min=1,score_gSA=1,score_EC_min=0,score_EC=0] ~ ~ ~ function ego:anvil_drop/display_settings
execute @e[type=armor_stand,tag=ADStand,score_ADpe1_min=0] ~ ~ ~ function ego:anvil_drop/change_percent_1
execute @e[type=armor_stand,tag=ADStand,score_ADpe2_min=0] ~ ~ ~ function ego:anvil_drop/change_percent_2
execute @e[type=armor_stand,tag=ADStand,score_ADpe3_min=0] ~ ~ ~ function ego:anvil_drop/toggle_walls
execute @e[type=armor_stand,tag=ADStand,score_ADiti1_min=0] ~ ~ ~ function ego:anvil_drop/change_timer_1
execute @e[type=armor_stand,tag=ADStand,score_ADiti2_min=0] ~ ~ ~ function ego:anvil_drop/change_timer_2
execute @e[type=armor_stand,tag=ADStand,score_ADiti3_min=0] ~ ~ ~ function ego:anvil_drop/change_timer_3
