scoreboard players operation &Seed BHJprng *= &Multiplier BHJprng
scoreboard players operation &Seed BHJprng += &Increment BHJprng
scoreboard players operation @s BHJprng = &Seed BHJprng
scoreboard players operation @s BHJprng %= &Modulus BHJprng
scoreboard players operation @s[score_BHJprng=-1] BHJprng *= -1 constants
scoreboard players operation @s BHJprng += &Offset BHJprng
execute @s[score_BHJprng_min=0,score_BHJprng=0] ~ ~ ~ function ego:bh_jungle/disguise_0
execute @s[score_BHJprng_min=1,score_BHJprng=1] ~ ~ ~ function ego:bh_jungle/disguise_1
execute @s[score_BHJprng_min=2,score_BHJprng=2] ~ ~ ~ function ego:bh_jungle/disguise_2
execute @s[score_BHJprng_min=3,score_BHJprng=3] ~ ~ ~ function ego:bh_jungle/disguise_3
execute @s[score_BHJprng_min=4,score_BHJprng=4] ~ ~ ~ function ego:bh_jungle/disguise_4
execute @s[score_BHJprng_min=5,score_BHJprng=5] ~ ~ ~ function ego:bh_jungle/disguise_5
execute @s[score_BHJprng_min=6,score_BHJprng=6] ~ ~ ~ function ego:bh_jungle/disguise_6
execute @s[score_BHJprng_min=7,score_BHJprng=7] ~ ~ ~ function ego:bh_jungle/disguise_7
execute @s[score_BHJprng_min=8,score_BHJprng=8] ~ ~ ~ function ego:bh_jungle/disguise_8
execute @s[score_BHJprng_min=9,score_BHJprng=9] ~ ~ ~ function ego:bh_jungle/disguise_9
execute @s[score_BHJprng_min=10,score_BHJprng=10] ~ ~ ~ function ego:bh_jungle/disguise_10
execute @s[score_BHJprng_min=11,score_BHJprng=11] ~ ~ ~ function ego:bh_jungle/disguise_11
execute @s[score_BHJprng_min=12,score_BHJprng=12] ~ ~ ~ function ego:bh_jungle/disguise_12
execute @s[score_BHJprng_min=13,score_BHJprng=13] ~ ~ ~ function ego:bh_jungle/disguise_13
execute @s[score_BHJprng_min=14,score_BHJprng=14] ~ ~ ~ function ego:bh_jungle/disguise_14
execute @s[score_BHJprng_min=15,score_BHJprng=15] ~ ~ ~ function ego:bh_jungle/disguise_15
execute @s[score_BHJprng_min=16,score_BHJprng=16] ~ ~ ~ function ego:bh_jungle/disguise_16
