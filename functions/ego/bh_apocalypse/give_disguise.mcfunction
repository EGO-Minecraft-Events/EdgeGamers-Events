scoreboard players operation &Seed BHAprng *= &Multiplier BHAprng
scoreboard players operation &Seed BHAprng += &Increment BHAprng
scoreboard players operation @s BHAprng = &Seed BHAprng
scoreboard players operation @s BHAprng %= &Modulus BHAprng
scoreboard players operation @s[score_BHAprng=-1] BHAprng *= -1 constants
scoreboard players operation @s BHAprng += &Offset BHAprng
execute @s[score_BHAprng_min=0,score_BHAprng=0] ~ ~ ~ function ego:bh_apocalypse/disguise_0
execute @s[score_BHAprng_min=1,score_BHAprng=1] ~ ~ ~ function ego:bh_apocalypse/disguise_1
execute @s[score_BHAprng_min=2,score_BHAprng=2] ~ ~ ~ function ego:bh_apocalypse/disguise_2
execute @s[score_BHAprng_min=3,score_BHAprng=3] ~ ~ ~ function ego:bh_apocalypse/disguise_3
execute @s[score_BHAprng_min=4,score_BHAprng=4] ~ ~ ~ function ego:bh_apocalypse/disguise_4
execute @s[score_BHAprng_min=5,score_BHAprng=5] ~ ~ ~ function ego:bh_apocalypse/disguise_5
execute @s[score_BHAprng_min=6,score_BHAprng=6] ~ ~ ~ function ego:bh_apocalypse/disguise_6
execute @s[score_BHAprng_min=7,score_BHAprng=7] ~ ~ ~ function ego:bh_apocalypse/disguise_7
execute @s[score_BHAprng_min=8,score_BHAprng=8] ~ ~ ~ function ego:bh_apocalypse/disguise_8
execute @s[score_BHAprng_min=9,score_BHAprng=9] ~ ~ ~ function ego:bh_apocalypse/disguise_9
execute @s[score_BHAprng_min=10,score_BHAprng=10] ~ ~ ~ function ego:bh_apocalypse/disguise_10
execute @s[score_BHAprng_min=11,score_BHAprng=11] ~ ~ ~ function ego:bh_apocalypse/disguise_11
execute @s[score_BHAprng_min=12,score_BHAprng=12] ~ ~ ~ function ego:bh_apocalypse/disguise_12
execute @s[score_BHAprng_min=13,score_BHAprng=13] ~ ~ ~ function ego:bh_apocalypse/disguise_13
