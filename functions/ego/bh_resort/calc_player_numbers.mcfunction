scoreboard players set @s BHREchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHREh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHREStand] BHREchi 1
scoreboard players operation Hiders BHRE = @s BHREchi
scoreboard players set @s BHREcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHREv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHREStand] BHREcvr 1
scoreboard players operation Seekers BHRE = @s BHREcvr
