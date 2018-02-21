execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players operation &Seed BHHDprng += @e[tag=PRNGIterator] BHHDprng
scoreboard players operation @e[tag=PRNGIterator] BHHDprng += @e[tag=PRNGIterator] BHHDprng
function ego:bh_hasdaa/prng_init unless @e[tag=PRNGIterator,score_BHHDprng_min=1073741824]
