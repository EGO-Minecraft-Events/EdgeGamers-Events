scoreboard players set @s BHMVchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMVh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHMVStand] BHMVchi 1
scoreboard players operation Hiders BHMV = @s BHMVchi
scoreboard players set @s BHMVcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMVv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHMVStand] BHMVcvr 1
scoreboard players operation Seekers BHMV = @s BHMVcvr
