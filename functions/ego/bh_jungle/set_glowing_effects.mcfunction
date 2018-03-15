execute @s[score_BHJgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHJh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHJgl_min=2] BHJgl 2
execute @s[score_BHJgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHJv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHJgl_min=2] BHJgl 1
