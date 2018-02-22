scoreboard players set Players ADpl 0
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_ADpl_min=1,score_ADpl=1] ~ ~ ~ scoreboard players add Players ADpl 1
scoreboard players operation Players AD = Players ADpl
scoreboard players add @s ADti 1
scoreboard players operation Time_Elapsed ADcl = @s ADti
scoreboard players operation Time_Elapsed ADcl /= 20 constants
scoreboard players operation Time_Elapsed AD = Time_Elapsed ADcl
