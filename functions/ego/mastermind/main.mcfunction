scoreboard players set @a gSA 0
scoreboard players set @a[x=45,y=3,z=22,dx=64,dy=30,dz=65] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-1217546714] FLid 1217546713
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-1217546712] FLid 1217546713
scoreboard players add @a[score_gSA_min=1,score_gSA=1] MMpl 0
execute @a[score_gSA_min=1,score_gSA=1,score_MMpl_min=0,score_MMpl=0] ~ ~ ~ function ego:mastermind/reset_player
execute @e[type=armor_stand,tag=MMStand,score_MMst_min=1,score_MMst=1] ~ ~ ~ function ego:mastermind/start_round
execute @e[type=armor_stand,tag=MMStand,score_MMst_min=2,score_MMst=2] ~ ~ ~ function ego:mastermind/during_round
execute @e[type=armor_stand,tag=MMStand,score_MMst_min=3,score_MMst=3] ~ ~ ~ function ego:mastermind/stop_round
execute @e[type=armor_stand,tag=MMRoom,score_MMign_min=1] ~ ~ ~ function ego:mastermind/check_guess
execute @a[m=2,score_MMpl_min=2,score_MMpl=2,score_gDE_min=1] ~ ~ ~ function ego:mastermind/reset_player
scoreboard players add @e[x=45,y=3,z=22,dx=64,dy=30,dz=65,type=item] MMcl 0 {Item:{id:"minecraft:wool"}}
execute @e[x=45,y=3,z=22,dx=64,dy=30,dz=65,type=item,score_MMcl_min=0,score_MMcl=0] ~ ~ ~ function ego:mastermind/change_wool
scoreboard players set @a[x=46,y=5,z=38,dx=62,dy=5,dz=7,m=1] MMrn 0
scoreboard players set @a[x=46,y=5,z=38,dx=62,dy=5,dz=7,m=2] MMrn 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,m=3] MMrn 0
scoreboard players set @a[x=53,y=4,z=36,dx=-7,dy=5,dz=-12,m=2] MMrn 1
scoreboard players set @a[x=53,y=4,z=36,dx=-7,dy=5,dz=-12,m=1] MMrn 1
scoreboard players set @a[x=64,y=4,z=36,dx=-7,dy=5,dz=-12,m=2] MMrn 2
scoreboard players set @a[x=64,y=4,z=36,dx=-7,dy=5,dz=-12,m=1] MMrn 2
scoreboard players set @a[x=75,y=4,z=36,dx=-7,dy=5,dz=-12,m=2] MMrn 3
scoreboard players set @a[x=75,y=4,z=36,dx=-7,dy=5,dz=-12,m=1] MMrn 3
scoreboard players set @a[x=86,y=4,z=36,dx=-7,dy=5,dz=-12,m=2] MMrn 4
scoreboard players set @a[x=86,y=4,z=36,dx=-7,dy=5,dz=-12,m=1] MMrn 4
scoreboard players set @a[x=97,y=4,z=36,dx=-7,dy=5,dz=-12,m=2] MMrn 5
scoreboard players set @a[x=97,y=4,z=36,dx=-7,dy=5,dz=-12,m=1] MMrn 5
scoreboard players set @a[x=108,y=4,z=36,dx=-7,dy=5,dz=-12,m=2] MMrn 6
scoreboard players set @a[x=108,y=4,z=36,dx=-7,dy=5,dz=-12,m=1] MMrn 6
scoreboard players set @a[x=46,y=4,z=47,dx=7,dy=5,dz=12,m=2] MMrn 7
scoreboard players set @a[x=46,y=4,z=47,dx=7,dy=5,dz=12,m=1] MMrn 7
scoreboard players set @a[x=57,y=4,z=47,dx=7,dy=5,dz=12,m=2] MMrn 8
scoreboard players set @a[x=57,y=4,z=47,dx=7,dy=5,dz=12,m=1] MMrn 8
scoreboard players set @a[x=68,y=4,z=47,dx=7,dy=5,dz=12,m=2] MMrn 9
scoreboard players set @a[x=68,y=4,z=47,dx=7,dy=5,dz=12,m=1] MMrn 9
scoreboard players set @a[x=79,y=4,z=47,dx=7,dy=5,dz=12,m=2] MMrn 10
scoreboard players set @a[x=79,y=4,z=47,dx=7,dy=5,dz=12,m=1] MMrn 10
scoreboard players set @a[x=90,y=4,z=47,dx=7,dy=5,dz=12,m=2] MMrn 11
scoreboard players set @a[x=90,y=4,z=47,dx=7,dy=5,dz=12,m=1] MMrn 11
scoreboard players set @a[x=101,y=4,z=47,dx=7,dy=5,dz=12,m=2] MMrn 12
scoreboard players set @a[x=101,y=4,z=47,dx=7,dy=5,dz=12,m=1] MMrn 12
execute @a[score_HOST_min=0,score_HOST=0] ~ ~ ~ function ego:mastermind/display_answer_actionbar
scoreboard teams join NoPVP @a[team=!NoPVP]
scoreboard teams join MMwhite @a[score_HOST_min=0,score_HOST=0,team=!MMwhite]
execute @a[score_MMrn_min=1] ~ ~ ~ scoreboard players operation @s MM = @s MMrn
scoreboard players reset @a[score_MMrn_min=0,score_MMrn=0] MM
