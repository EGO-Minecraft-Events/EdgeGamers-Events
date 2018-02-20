scoreboard players operation @e[tag=PRNGIterator] BHHDprng -= &Iteration BHHDprng
execute @r[type=area_effect_cloud,tag=PRNG] ~ ~ ~ execute @s[tag=True] ~ ~ ~ scoreboard players operation &Seed BHHDprng += &Iteration BHHDprng
scoreboard players operation &Iteration BHHDprng += &Iteration BHHDprng
execute @e[tag=PRNGIterator,score_BHHDprng_min=0,score_BHHDprng=0] ~ ~ ~ scoreboard players tag @r[type=area_effect_cloud,tag=PRNG] add Done
execute @e[tag=PRNG] ~ ~ ~ execute @s[tag=Done] ~ ~ ~ scoreboard players reset @e[tag=PRNGIterator] BHHDprng
execute @e[tag=PRNG] ~ ~ ~ execute @s[tag=Done] ~ ~ ~ kill @e[tag=PRNGIterator]
function ego:bh_hasdaa/prng_init if @e[tag=PRNGIterator]
