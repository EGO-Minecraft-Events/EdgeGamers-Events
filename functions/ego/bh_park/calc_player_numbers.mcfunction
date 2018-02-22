scoreboard players set @s BHPchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHPh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHPStand] BHPchi 1
scoreboard players operation Hiders BHP = @s BHPchi
scoreboard players set @s BHPcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHPv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHPStand] BHPcvr 1
scoreboard players operation Seekers BHP = @s BHPcvr
