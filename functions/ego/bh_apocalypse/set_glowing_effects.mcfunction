execute @s[score_BHAgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHAh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHAgl_min=2] BHAgl 2
execute @s[score_BHAgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHAv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHAgl_min=2] BHAgl 1
