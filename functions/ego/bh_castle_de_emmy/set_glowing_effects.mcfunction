execute @s[score_BHCDEgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHCDEh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHCDEgl_min=2] BHCDEgl 2
execute @s[score_BHCDEgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHCDEv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHCDEgl_min=2] BHCDEgl 1
