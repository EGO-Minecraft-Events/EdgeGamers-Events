scoreboard players set @a gSA 0
scoreboard players set @a[x=-122,y=4,z=133,dx=79,dy=50,dz=91] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-586508006] FLid 586508005
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-586508004] FLid 586508005
scoreboard players set @e[x=-122,y=4,z=133,dx=79,dy=50,dz=91,type=arrow] TPcl 1 {inGround:1b}
kill @e[type=arrow,score_TPcl_min=1,score_TPcl=1]
kill @e[x=-122,y=4,z=133,dx=79,dy=50,dz=91,type=item]
execute @e[type=armor_stand,tag=TPStand,score_TPiat_min=0] ~ ~ ~ function ego:the_pit_3/change_arena
execute @e[type=armor_stand,tag=TPStand,score_TPst_min=2,score_TPst=3,score_TPiwt_min=0] ~ ~ ~ function ego:the_pit_3/give_weapons
scoreboard players add @a[score_gSA_min=1,score_gSA=1,m=2] TPpl 0
execute @a[score_gSA_min=1,score_gSA=1,score_TPpl_min=0,score_TPpl=0,m=2] ~ ~ ~ function ego:the_pit_3/reset_player
execute @a[score_gSA_min=1,score_gSA=1,score_gCS_min=1,m=2] ~ ~ ~ function ego:the_pit_3/use_carrot_stick
effect @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=0] minecraft:resistance 3 10 true
execute @e[type=armor_stand,tag=TPStand] ~ ~ ~ function ego:the_pit_3/display_players
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=1] ~ ~ ~ function ego:the_pit_3/display_status
execute @e[type=armor_stand,tag=TPStand,score_TPst_min=1,score_TPst=1] ~ ~ ~ function ego:the_pit_3/start_round
execute @e[type=armor_stand,tag=TPStand,score_TPst_min=2,score_TPst=2] ~ ~ ~ function ego:the_pit_3/countdown
execute @e[type=armor_stand,tag=TPStand,score_TPst_min=3,score_TPst=3] ~ ~ ~ function ego:the_pit_3/during_round
execute @e[type=armor_stand,tag=TPStand,score_TPst_min=4,score_TPst=4] ~ ~ ~ function ego:the_pit_3/stop_round
execute @a[m=2,score_TPpl_min=2,score_TPpl=2,score_gDE_min=1] ~ ~ ~ function ego:the_pit_3/reset_player
execute @a[x=-107,y=25,z=193,dx=9,dy=5,dz=9,m=2,score_TPpl_min=2,score_TPpl=2] ~ ~ ~ function ego:the_pit_3/reset_player
