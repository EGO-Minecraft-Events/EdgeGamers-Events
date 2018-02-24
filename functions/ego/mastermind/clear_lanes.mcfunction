fill 45 2 60 109 2 23 redstone_block 0 replace planks 0
fill 45 2 60 109 2 23 planks 0 replace redstone_block 0
scoreboard players set @e[type=armor_stand,tag=MMRoom] MMgn 1
scoreboard players reset @e[type=armor_stand,tag=MMRoom] MMpl
execute @a[score_gSA_min=1,score_gSA=1,m=2] ~ ~ ~ function ego:mastermind/reset_player
