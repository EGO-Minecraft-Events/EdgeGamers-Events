execute @s[score_BHZgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHZh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHZgl_min=2] BHZgl 2
execute @s[score_BHZgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHZv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHZgl_min=2] BHZgl 1
