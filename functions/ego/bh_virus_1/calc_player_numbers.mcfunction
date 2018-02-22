scoreboard players set @s BHVR1chi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHVR1h] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHVR1Stand] BHVR1chi 1
scoreboard players operation Hiders BHVR1 = @s BHVR1chi
scoreboard players set @s BHVR1cvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHVR1v] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHVR1Stand] BHVR1cvr 1
scoreboard players operation Seekers BHVR1 = @s BHVR1cvr
