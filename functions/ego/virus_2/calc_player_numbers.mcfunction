scoreboard players set @s VR2chi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=VR2h] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=VR2Stand] VR2chi 1
scoreboard players operation Hiders VR2 = @s VR2chi
scoreboard players set @s VR2cvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=VR2v] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=VR2Stand] VR2cvr 1
scoreboard players operation Virus VR2 = @s VR2cvr
