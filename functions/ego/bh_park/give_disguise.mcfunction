scoreboard players operation &Seed BHPprng *= &Multiplier BHPprng
scoreboard players operation &Seed BHPprng += &Increment BHPprng
scoreboard players operation @s BHPprng = &Seed BHPprng
scoreboard players operation @s BHPprng %= &Modulus BHPprng
scoreboard players operation @s[score_BHPprng=-1] BHPprng *= -1 constants
scoreboard players operation @s BHPprng += &Offset BHPprng
execute @s[score_BHPprng_min=0,score_BHPprng=0] ~ ~ ~ function ego:bh_park/disguise_0
execute @s[score_BHPprng_min=1,score_BHPprng=1] ~ ~ ~ function ego:bh_park/disguise_1
execute @s[score_BHPprng_min=2,score_BHPprng=2] ~ ~ ~ function ego:bh_park/disguise_2
execute @s[score_BHPprng_min=3,score_BHPprng=3] ~ ~ ~ function ego:bh_park/disguise_3
execute @s[score_BHPprng_min=4,score_BHPprng=4] ~ ~ ~ function ego:bh_park/disguise_4
execute @s[score_BHPprng_min=5,score_BHPprng=5] ~ ~ ~ function ego:bh_park/disguise_5
execute @s[score_BHPprng_min=6,score_BHPprng=6] ~ ~ ~ function ego:bh_park/disguise_6
