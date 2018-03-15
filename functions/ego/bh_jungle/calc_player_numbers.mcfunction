scoreboard players set @s BHJchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHJh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHJStand] BHJchi 1
scoreboard players operation Hiders BHJ = @s BHJchi
scoreboard players set @s BHJcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHJv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHJStand] BHJcvr 1
scoreboard players operation Seekers BHJ = @s BHJcvr
