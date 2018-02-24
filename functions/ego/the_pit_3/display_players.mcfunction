scoreboard players set Players TPcl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2] ~ ~ ~ scoreboard players add Players TPcl 1
scoreboard players operation Players TP = Players TPcl
