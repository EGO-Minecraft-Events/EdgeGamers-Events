say running ego:bh_hospital/set_glowing_effects
execute @s[score_BHHgl_min=2] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHHh] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHHgl_min=2] BHHgl 2
execute @s[score_BHHgl_min=1] ~ ~ ~ effect @a[score_gSA_min=1,score_gSA=1,m=2,team=BHHv] minecraft:glowing 3 0 true
scoreboard players remove @s[score_BHHgl_min=2] BHHgl 1
