scoreboard players operation &Seed BHRAprng *= &Multiplier BHRAprng
scoreboard players operation &Seed BHRAprng += &Increment BHRAprng
scoreboard players operation @s BHRAprng = &Seed BHRAprng
scoreboard players operation @s BHRAprng %= &Modulus BHRAprng
scoreboard players operation @s[score_BHRAprng=-1] BHRAprng *= -1 constants
scoreboard players operation @s BHRAprng += &Offset BHRAprng
execute @s[score_BHRAprng_min=0,score_BHRAprng=0] ~ ~ ~ function ego:bh_rainbow/disguise_0
execute @s[score_BHRAprng_min=1,score_BHRAprng=1] ~ ~ ~ function ego:bh_rainbow/disguise_1
execute @s[score_BHRAprng_min=2,score_BHRAprng=2] ~ ~ ~ function ego:bh_rainbow/disguise_2
execute @s[score_BHRAprng_min=3,score_BHRAprng=3] ~ ~ ~ function ego:bh_rainbow/disguise_3
execute @s[score_BHRAprng_min=4,score_BHRAprng=4] ~ ~ ~ function ego:bh_rainbow/disguise_4
execute @s[score_BHRAprng_min=5,score_BHRAprng=5] ~ ~ ~ function ego:bh_rainbow/disguise_5
execute @s[score_BHRAprng_min=6,score_BHRAprng=6] ~ ~ ~ function ego:bh_rainbow/disguise_6
execute @s[score_BHRAprng_min=7,score_BHRAprng=7] ~ ~ ~ function ego:bh_rainbow/disguise_7
execute @s[score_BHRAprng_min=8,score_BHRAprng=8] ~ ~ ~ function ego:bh_rainbow/disguise_8
