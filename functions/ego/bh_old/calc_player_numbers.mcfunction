scoreboard players set @s BHOchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHOh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHOStand] BHOchi 1
scoreboard players operation Hiders BHO = @s BHOchi
scoreboard players set @s BHOcvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHOv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHOStand] BHOcvr 1
scoreboard players operation Seekers BHO = @s BHOcvr
