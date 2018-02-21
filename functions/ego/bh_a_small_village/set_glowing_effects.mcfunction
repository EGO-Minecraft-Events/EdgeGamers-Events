execute @s[score_BHASVgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHASVh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHASVgl_min=2] BHASVgl 2
execute @s[score_BHASVgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHASVv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHASVgl_min=2] BHASVgl 1
