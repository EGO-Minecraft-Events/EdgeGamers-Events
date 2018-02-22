execute @s[score_BHREgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHREh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHREgl_min=2] BHREgl 2
execute @s[score_BHREgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHREv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHREgl_min=2] BHREgl 1
