execute @s[score_BHMgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHMgl_min=2] BHMgl 2
execute @s[score_BHMgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHMgl_min=2] BHMgl 1
