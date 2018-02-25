execute @s[score_BHMMgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMMh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHMMgl_min=2] BHMMgl 2
execute @s[score_BHMMgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHMMv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHMMgl_min=2] BHMMgl 1
