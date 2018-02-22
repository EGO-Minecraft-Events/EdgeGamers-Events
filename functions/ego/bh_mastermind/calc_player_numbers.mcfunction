scoreboard players set @s BHMMchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMMh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHMMStand] BHMMchi 1
scoreboard players operation Hiders BHMM = @s BHMMchi
scoreboard players set @s BHMMcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMMv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHMMStand] BHMMcvr 1
scoreboard players operation Seekers BHMM = @s BHMMcvr
