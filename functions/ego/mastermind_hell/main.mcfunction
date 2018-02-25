scoreboard players set @a gSA 0
scoreboard players set @a[x=172,y=21,z=71,dx=62,dy=-17,dz=-53] gSA 1
scoreboard players add @a[score_gSA_min=1,score_gSA=1] FLid 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid=-525124046] FLid 525124045
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_FLid_min=-525124044] FLid 525124045
scoreboard players add @a[score_gSA_min=1,score_gSA=1] MMHpl 0
execute @a[score_gSA_min=1,score_gSA=1,score_MMHpl_min=0,score_MMHpl=0] ~ ~ ~ function ego:mastermind_hell/reset_player
execute @e[type=armor_stand,tag=MMHStand,score_MMHst_min=1,score_MMHst=1] ~ ~ ~ function ego:mastermind_hell/start_round
execute @e[type=armor_stand,tag=MMHStand,score_MMHst_min=2,score_MMHst=2] ~ ~ ~ function ego:mastermind_hell/during_round
execute @e[type=armor_stand,tag=MMHStand,score_MMHst_min=3,score_MMHst=3] ~ ~ ~ function ego:mastermind_hell/stop_round
execute @e[type=armor_stand,tag=MMHRoom,score_MMHign_min=1] ~ ~ ~ function ego:mastermind_hell/check_guess
execute @a[m=2,score_MMHpl_min=2,score_MMHpl=2,score_gDE_min=1] ~ ~ ~ function ego:mastermind_hell/reset_player
scoreboard players add @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item] MMHcl 0 {Item:{id:"minecraft:coal_block"}}
scoreboard players add @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item] MMHcl 0 {Item:{id:"minecraft:redstone_block"}}
scoreboard players add @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item] MMHcl 0 {Item:{id:"minecraft:lapis_block"}}
scoreboard players add @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item] MMHcl 0 {Item:{id:"minecraft:emerald_block"}}
scoreboard players add @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item] MMHcl 0 {Item:{id:"minecraft:iron_block"}}
scoreboard players add @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item] MMHcl 0 {Item:{id:"minecraft:gold_block"}}
scoreboard players add @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item] MMHcl 0 {Item:{id:"minecraft:diamond_block"}}
scoreboard players add @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item] MMHcl 0 {Item:{id:"minecraft:quartz_block"}}
execute @e[x=172,y=21,z=71,dx=62,dy=-17,dz=-53,type=item,score_MMHcl_min=0,score_MMHcl=0] ~ ~ ~ function ego:mastermind_hell/change_block
scoreboard players set @a[x=173,y=5,z=47,dx=60,dy=5,dz=-5,m=1] MMHrn 0
scoreboard players set @a[x=173,y=5,z=47,dx=60,dy=5,dz=-5,m=2] MMHrn 0
scoreboard players set @a[score_gSA_min=1,score_gSA=1,m=3] MMHrn 0
scoreboard players set @a[x=196,y=4,z=40,dx=-9,dy=6,dz=-20,m=2] MMHrn 1
scoreboard players set @a[x=196,y=4,z=40,dx=-9,dy=6,dz=-20,m=1] MMHrn 1
scoreboard players set @a[x=208,y=4,z=40,dx=-9,dy=6,dz=-20,m=2] MMHrn 2
scoreboard players set @a[x=208,y=4,z=40,dx=-9,dy=6,dz=-20,m=1] MMHrn 2
scoreboard players set @a[x=220,y=4,z=40,dx=-9,dy=6,dz=-20,m=2] MMHrn 3
scoreboard players set @a[x=220,y=4,z=40,dx=-9,dy=6,dz=-20,m=1] MMHrn 3
scoreboard players set @a[x=232,y=4,z=40,dx=-9,dy=6,dz=-20,m=2] MMHrn 4
scoreboard players set @a[x=232,y=4,z=40,dx=-9,dy=6,dz=-20,m=1] MMHrn 4
scoreboard players set @a[x=187,y=4,z=49,dx=9,dy=6,dz=20,m=2] MMHrn 5
scoreboard players set @a[x=187,y=4,z=49,dx=9,dy=6,dz=20,m=1] MMHrn 5
scoreboard players set @a[x=199,y=4,z=49,dx=9,dy=6,dz=20,m=2] MMHrn 6
scoreboard players set @a[x=199,y=4,z=49,dx=9,dy=6,dz=20,m=1] MMHrn 6
scoreboard players set @a[x=211,y=4,z=49,dx=9,dy=6,dz=20,m=2] MMHrn 7
scoreboard players set @a[x=211,y=4,z=49,dx=9,dy=6,dz=20,m=1] MMHrn 7
scoreboard players set @a[x=223,y=4,z=49,dx=9,dy=6,dz=20,m=2] MMHrn 8
scoreboard players set @a[x=223,y=4,z=49,dx=9,dy=6,dz=20,m=1] MMHrn 8
execute @a[score_HOST_min=0,score_HOST=0] ~ ~ ~ function ego:mastermind_hell/display_answer_actionbar
execute @a[score_MMHrn_min=1] ~ ~ ~ scoreboard players operation @s MMH = @s MMHrn
scoreboard players reset @a[score_MMHrn_min=0,score_MMHrn=0] MMH
