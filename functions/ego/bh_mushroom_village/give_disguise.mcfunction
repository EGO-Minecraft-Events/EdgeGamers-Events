scoreboard players operation &Seed BHMVprng *= &Multiplier BHMVprng
scoreboard players operation &Seed BHMVprng += &Increment BHMVprng
scoreboard players operation @s BHMVprng = &Seed BHMVprng
scoreboard players operation @s BHMVprng %= &Modulus BHMVprng
scoreboard players operation @s[score_BHMVprng=-1] BHMVprng *= -1 constants
scoreboard players operation @s BHMVprng += &Offset BHMVprng
execute @s[score_BHMVprng_min=0,score_BHMVprng=0] ~ ~ ~ function ego:bh_mushroom_village/disguise_0
execute @s[score_BHMVprng_min=1,score_BHMVprng=1] ~ ~ ~ function ego:bh_mushroom_village/disguise_1
execute @s[score_BHMVprng_min=2,score_BHMVprng=2] ~ ~ ~ function ego:bh_mushroom_village/disguise_2
execute @s[score_BHMVprng_min=3,score_BHMVprng=3] ~ ~ ~ function ego:bh_mushroom_village/disguise_3
execute @s[score_BHMVprng_min=4,score_BHMVprng=4] ~ ~ ~ function ego:bh_mushroom_village/disguise_4
execute @s[score_BHMVprng_min=5,score_BHMVprng=5] ~ ~ ~ function ego:bh_mushroom_village/disguise_5
execute @s[score_BHMVprng_min=6,score_BHMVprng=6] ~ ~ ~ function ego:bh_mushroom_village/disguise_6
execute @s[score_BHMVprng_min=7,score_BHMVprng=7] ~ ~ ~ function ego:bh_mushroom_village/disguise_7
execute @s[score_BHMVprng_min=8,score_BHMVprng=8] ~ ~ ~ function ego:bh_mushroom_village/disguise_8
execute @s[score_BHMVprng_min=9,score_BHMVprng=9] ~ ~ ~ function ego:bh_mushroom_village/disguise_9
execute @s[score_BHMVprng_min=10,score_BHMVprng=10] ~ ~ ~ function ego:bh_mushroom_village/disguise_10
execute @s[score_BHMVprng_min=11,score_BHMVprng=11] ~ ~ ~ function ego:bh_mushroom_village/disguise_11
execute @s[score_BHMVprng_min=12,score_BHMVprng=12] ~ ~ ~ function ego:bh_mushroom_village/disguise_12
execute @s[score_BHMVprng_min=13,score_BHMVprng=13] ~ ~ ~ function ego:bh_mushroom_village/disguise_13
execute @s[score_BHMVprng_min=14,score_BHMVprng=14] ~ ~ ~ function ego:bh_mushroom_village/disguise_14
execute @s[score_BHMVprng_min=15,score_BHMVprng=15] ~ ~ ~ function ego:bh_mushroom_village/disguise_15
