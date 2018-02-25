scoreboard players operation &Seed BHOprng *= &Multiplier BHOprng
scoreboard players operation &Seed BHOprng += &Increment BHOprng
scoreboard players operation @s BHOprng = &Seed BHOprng
scoreboard players operation @s BHOprng %= &Modulus BHOprng
scoreboard players operation @s[score_BHOprng=-1] BHOprng *= -1 constants
scoreboard players operation @s BHOprng += &Offset BHOprng
execute @s[score_BHOprng_min=0,score_BHOprng=0] ~ ~ ~ function ego:bh_old/disguise_0
execute @s[score_BHOprng_min=1,score_BHOprng=1] ~ ~ ~ function ego:bh_old/disguise_1
execute @s[score_BHOprng_min=2,score_BHOprng=2] ~ ~ ~ function ego:bh_old/disguise_2
execute @s[score_BHOprng_min=3,score_BHOprng=3] ~ ~ ~ function ego:bh_old/disguise_3
execute @s[score_BHOprng_min=4,score_BHOprng=4] ~ ~ ~ function ego:bh_old/disguise_4
execute @s[score_BHOprng_min=5,score_BHOprng=5] ~ ~ ~ function ego:bh_old/disguise_5
execute @s[score_BHOprng_min=6,score_BHOprng=6] ~ ~ ~ function ego:bh_old/disguise_6
execute @s[score_BHOprng_min=7,score_BHOprng=7] ~ ~ ~ function ego:bh_old/disguise_7
execute @s[score_BHOprng_min=8,score_BHOprng=8] ~ ~ ~ function ego:bh_old/disguise_8
execute @s[score_BHOprng_min=9,score_BHOprng=9] ~ ~ ~ function ego:bh_old/disguise_9
execute @s[score_BHOprng_min=10,score_BHOprng=10] ~ ~ ~ function ego:bh_old/disguise_10
execute @s[score_BHOprng_min=11,score_BHOprng=11] ~ ~ ~ function ego:bh_old/disguise_11
execute @s[score_BHOprng_min=12,score_BHOprng=12] ~ ~ ~ function ego:bh_old/disguise_12
execute @s[score_BHOprng_min=13,score_BHOprng=13] ~ ~ ~ function ego:bh_old/disguise_13
execute @s[score_BHOprng_min=14,score_BHOprng=14] ~ ~ ~ function ego:bh_old/disguise_14
execute @s[score_BHOprng_min=15,score_BHOprng=15] ~ ~ ~ function ego:bh_old/disguise_15
execute @s[score_BHOprng_min=16,score_BHOprng=16] ~ ~ ~ function ego:bh_old/disguise_16
execute @s[score_BHOprng_min=17,score_BHOprng=17] ~ ~ ~ function ego:bh_old/disguise_17
