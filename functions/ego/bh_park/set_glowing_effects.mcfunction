execute @s[score_BHPgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHPh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHPgl_min=2] BHPgl 2
execute @s[score_BHPgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHPv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHPgl_min=2] BHPgl 1
