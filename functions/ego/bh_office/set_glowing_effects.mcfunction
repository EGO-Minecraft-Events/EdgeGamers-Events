execute @s[score_BHOgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHOh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHOgl_min=2] BHOgl 2
execute @s[score_BHOgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHOv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHOgl_min=2] BHOgl 1
