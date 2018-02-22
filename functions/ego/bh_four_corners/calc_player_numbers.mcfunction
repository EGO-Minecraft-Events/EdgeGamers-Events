scoreboard players set @s BHFCchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHFCh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHFCStand] BHFCchi 1
scoreboard players operation Hiders BHFC = @s BHFCchi
scoreboard players set @s BHFCcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHFCv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHFCStand] BHFCcvr 1
scoreboard players operation Seekers BHFC = @s BHFCcvr
