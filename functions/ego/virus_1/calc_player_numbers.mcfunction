scoreboard players set @s VR1chi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=VR1h] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=VR1Stand] VR1chi 1
scoreboard players operation Hiders VR1 = @s VR1chi
scoreboard players set @s VR1cvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=VR1v] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=VR1Stand] VR1cvr 1
scoreboard players operation Virus VR1 = @s VR1cvr
