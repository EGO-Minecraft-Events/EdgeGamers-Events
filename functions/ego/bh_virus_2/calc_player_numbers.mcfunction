scoreboard players set @s BHVR2chi 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHVR2h] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHVR2Stand] BHVR2chi 1
scoreboard players operation Hiders BHVR2 = @s BHVR2chi
scoreboard players set @s BHVR2cvr 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,team=BHVR2v] ~ ~ ~ scoreboard players add @e[type=armor_stand,tag=BHVR2Stand] BHVR2cvr 1
scoreboard players operation Seekers BHVR2 = @s BHVR2cvr
