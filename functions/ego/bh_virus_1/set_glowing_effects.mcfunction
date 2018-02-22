execute @s[score_BHVR1gl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHVR1h] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHVR1gl_min=2] BHVR1gl 2
execute @s[score_BHVR1gl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHVR1v] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHVR1gl_min=2] BHVR1gl 1
