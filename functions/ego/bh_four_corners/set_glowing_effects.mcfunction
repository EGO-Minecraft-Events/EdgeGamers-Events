execute @s[score_BHFCgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHFCh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHFCgl_min=2] BHFCgl 2
execute @s[score_BHFCgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHFCv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHFCgl_min=2] BHFCgl 1
