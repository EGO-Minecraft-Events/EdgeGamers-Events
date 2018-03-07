scoreboard players set @s BHHchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHHh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHHStand] BHHchi 1
scoreboard players operation Hiders BHH = @s BHHchi
scoreboard players set @s BHHcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHHv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHHStand] BHHcvr 1
scoreboard players operation Seekers BHH = @s BHHcvr
