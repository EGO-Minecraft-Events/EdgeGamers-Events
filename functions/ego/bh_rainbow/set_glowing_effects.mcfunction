execute @s[score_BHRAgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHRAh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHRAgl_min=2] BHRAgl 2
execute @s[score_BHRAgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHRAv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHRAgl_min=2] BHRAgl 1
