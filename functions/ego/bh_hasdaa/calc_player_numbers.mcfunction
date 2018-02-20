scoreboard players set @s BHHDchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHHDh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHHDStand] BHHDchi 1
scoreboard players operation Hiders BHHD = @s BHHDchi
scoreboard players set @s BHHDcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHHDv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHHDStand] BHHDcvr 1
scoreboard players operation Seekers BHHD = @s BHHDcvr
