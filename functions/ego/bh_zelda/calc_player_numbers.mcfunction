scoreboard players set @s BHZchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHZh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHZStand] BHZchi 1
scoreboard players operation Hiders BHZ = @s BHZchi
scoreboard players set @s BHZcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHZv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHZStand] BHZcvr 1
scoreboard players operation Seekers BHZ = @s BHZcvr
