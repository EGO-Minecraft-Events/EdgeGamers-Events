scoreboard players set @s BHAchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHAh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHAStand] BHAchi 1
scoreboard players operation Hiders BHA = @s BHAchi
scoreboard players set @s BHAcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHAv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHAStand] BHAcvr 1
scoreboard players operation Seekers BHA = @s BHAcvr
