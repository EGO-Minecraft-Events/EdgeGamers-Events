scoreboard players set @s BHTSchi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHTSh] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHTSStand] BHTSchi 1
scoreboard players operation Hiders BHTS = @s BHTSchi
scoreboard players set @s BHTScvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHTSv] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHTSStand] BHTScvr 1
scoreboard players operation Seekers BHTS = @s BHTScvr
