scoreboard players set @s BHRAchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHRAh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHRAStand] BHRAchi 1
scoreboard players operation Hiders BHRA = @s BHRAchi
scoreboard players set @s BHRAcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHRAv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHRAStand] BHRAcvr 1
scoreboard players operation Seekers BHRA = @s BHRAcvr
