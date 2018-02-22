execute @s[score_BHVR2gl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHVR2h] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHVR2gl_min=2] BHVR2gl 2
execute @s[score_BHVR2gl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHVR2v] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHVR2gl_min=2] BHVR2gl 1
