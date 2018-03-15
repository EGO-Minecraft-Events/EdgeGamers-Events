scoreboard players operation &Seed BHVR1prng *= &Multiplier BHVR1prng
scoreboard players operation &Seed BHVR1prng += &Increment BHVR1prng
scoreboard players operation @s BHVR1prng = &Seed BHVR1prng
scoreboard players operation @s BHVR1prng %= &Modulus BHVR1prng
scoreboard players operation @s[score_BHVR1prng=-1] BHVR1prng *= -1 constants
scoreboard players operation @s BHVR1prng += &Offset BHVR1prng
execute @s[score_BHVR1prng_min=0,score_BHVR1prng=0] ~ ~ ~ function ego:bh_virus_1/disguise_0
execute @s[score_BHVR1prng_min=1,score_BHVR1prng=1] ~ ~ ~ function ego:bh_virus_1/disguise_1
execute @s[score_BHVR1prng_min=2,score_BHVR1prng=2] ~ ~ ~ function ego:bh_virus_1/disguise_2
execute @s[score_BHVR1prng_min=3,score_BHVR1prng=3] ~ ~ ~ function ego:bh_virus_1/disguise_3
execute @s[score_BHVR1prng_min=4,score_BHVR1prng=4] ~ ~ ~ function ego:bh_virus_1/disguise_4
execute @s[score_BHVR1prng_min=5,score_BHVR1prng=5] ~ ~ ~ function ego:bh_virus_1/disguise_5
execute @s[score_BHVR1prng_min=6,score_BHVR1prng=6] ~ ~ ~ function ego:bh_virus_1/disguise_6
execute @s[score_BHVR1prng_min=7,score_BHVR1prng=7] ~ ~ ~ function ego:bh_virus_1/disguise_7
