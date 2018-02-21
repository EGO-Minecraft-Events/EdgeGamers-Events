scoreboard players set @s BHMchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHMStand] BHMchi 1
scoreboard players operation Hiders BHM = @s BHMchi
scoreboard players set @s BHMcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHMStand] BHMcvr 1
scoreboard players operation Seekers BHM = @s BHMcvr
