execute @s[score_BHTSgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHTSh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHTSgl_min=2] BHTSgl 2
execute @s[score_BHTSgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHTSv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHTSgl_min=2] BHTSgl 1
