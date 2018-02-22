execute @s[score_ADpe3_min=0,score_ADpe3=0] ~ ~ ~ blockdata -36 13 79 {integrity:0.0f}
execute @s[score_ADpe3_min=0,score_ADpe3=0] ~ ~ ~ scoreboard players set &WallsToggle ADcl 0
execute @s[score_ADpe3_min=1,score_ADpe3=1] ~ ~ ~ blockdata -36 13 79 {integrity:1.0f}
execute @s[score_ADpe3_min=1,score_ADpe3=1] ~ ~ ~ scoreboard players set &WallsToggle ADcl 1
scoreboard players set @s ADpe3 -1
