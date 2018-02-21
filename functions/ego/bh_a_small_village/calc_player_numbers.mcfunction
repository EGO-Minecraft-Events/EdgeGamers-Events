scoreboard players set @s BHASVchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHASVh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHASVStand] BHASVchi 1
scoreboard players operation Hiders BHASV = @s BHASVchi
scoreboard players set @s BHASVcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHASVv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHASVStand] BHASVcvr 1
scoreboard players operation Seekers BHASV = @s BHASVcvr
