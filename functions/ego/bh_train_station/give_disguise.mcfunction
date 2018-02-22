scoreboard players operation &Seed BHTSprng *= &Multiplier BHTSprng
scoreboard players operation &Seed BHTSprng += &Increment BHTSprng
scoreboard players operation @s BHTSprng = &Seed BHTSprng
scoreboard players operation @s BHTSprng %= &Modulus BHTSprng
scoreboard players operation @s[score_BHTSprng=-1] BHTSprng *= -1 constants
scoreboard players operation @s BHTSprng += &Offset BHTSprng
execute @s[score_BHTSprng_min=0,score_BHTSprng=0] ~ ~ ~ function ego:bh_train_station/disguise_0
execute @s[score_BHTSprng_min=1,score_BHTSprng=1] ~ ~ ~ function ego:bh_train_station/disguise_1
execute @s[score_BHTSprng_min=2,score_BHTSprng=2] ~ ~ ~ function ego:bh_train_station/disguise_2
execute @s[score_BHTSprng_min=3,score_BHTSprng=3] ~ ~ ~ function ego:bh_train_station/disguise_3
execute @s[score_BHTSprng_min=4,score_BHTSprng=4] ~ ~ ~ function ego:bh_train_station/disguise_4
execute @s[score_BHTSprng_min=5,score_BHTSprng=5] ~ ~ ~ function ego:bh_train_station/disguise_5
execute @s[score_BHTSprng_min=6,score_BHTSprng=6] ~ ~ ~ function ego:bh_train_station/disguise_6
execute @s[score_BHTSprng_min=7,score_BHTSprng=7] ~ ~ ~ function ego:bh_train_station/disguise_7
