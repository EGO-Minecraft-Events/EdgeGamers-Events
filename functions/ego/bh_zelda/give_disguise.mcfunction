scoreboard players operation &Seed BHZprng *= &Multiplier BHZprng
scoreboard players operation &Seed BHZprng += &Increment BHZprng
scoreboard players operation @s BHZprng = &Seed BHZprng
scoreboard players operation @s BHZprng %= &Modulus BHZprng
scoreboard players operation @s[score_BHZprng=-1] BHZprng *= -1 constants
scoreboard players operation @s BHZprng += &Offset BHZprng
execute @s[score_BHZprng_min=0,score_BHZprng=0] ~ ~ ~ function ego:bh_zelda/disguise_0
execute @s[score_BHZprng_min=1,score_BHZprng=1] ~ ~ ~ function ego:bh_zelda/disguise_1
execute @s[score_BHZprng_min=2,score_BHZprng=2] ~ ~ ~ function ego:bh_zelda/disguise_2
execute @s[score_BHZprng_min=3,score_BHZprng=3] ~ ~ ~ function ego:bh_zelda/disguise_3
execute @s[score_BHZprng_min=4,score_BHZprng=4] ~ ~ ~ function ego:bh_zelda/disguise_4
execute @s[score_BHZprng_min=5,score_BHZprng=5] ~ ~ ~ function ego:bh_zelda/disguise_5
execute @s[score_BHZprng_min=6,score_BHZprng=6] ~ ~ ~ function ego:bh_zelda/disguise_6
execute @s[score_BHZprng_min=7,score_BHZprng=7] ~ ~ ~ function ego:bh_zelda/disguise_7
execute @s[score_BHZprng_min=8,score_BHZprng=8] ~ ~ ~ function ego:bh_zelda/disguise_8
execute @s[score_BHZprng_min=9,score_BHZprng=9] ~ ~ ~ function ego:bh_zelda/disguise_9
execute @s[score_BHZprng_min=10,score_BHZprng=10] ~ ~ ~ function ego:bh_zelda/disguise_10
