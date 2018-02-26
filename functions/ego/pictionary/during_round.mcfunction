scoreboard players remove @s[score_PCti_min=1] PCti 1
scoreboard players operation Time_Elapsed PCcl = @s PCti
scoreboard players operation Time_Elapsed PCcl /= 20 constants
scoreboard players operation Time_Elapsed PC = Time_Elapsed PCcl
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_PCpl_min=2,score_PCpl=2] ~ ~ ~ function ego:pictionary/update_artist
execute @a[score_gSA_min=1,score_gSA=1,score_HOST_min=0,score_HOST=0] ~ ~ ~ function ego:pictionary/display_topic
