scoreboard players set @s BHCDEchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHCDEh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHCDEStand] BHCDEchi 1
scoreboard players operation Hiders BHCDE = @s BHCDEchi
scoreboard players set @s BHCDEcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHCDEv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHCDEStand] BHCDEcvr 1
scoreboard players operation Seekers BHCDE = @s BHCDEcvr
