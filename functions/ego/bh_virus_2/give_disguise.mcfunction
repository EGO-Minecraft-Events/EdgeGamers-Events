scoreboard players operation &Seed BHVR2prng *= &Multiplier BHVR2prng
scoreboard players operation &Seed BHVR2prng += &Increment BHVR2prng
scoreboard players operation @s BHVR2prng = &Seed BHVR2prng
scoreboard players operation @s BHVR2prng %= &Modulus BHVR2prng
scoreboard players operation @s[score_BHVR2prng=-1] BHVR2prng *= -1 constants
scoreboard players operation @s BHVR2prng += &Offset BHVR2prng
execute @s[score_BHVR2prng_min=0,score_BHVR2prng=0] ~ ~ ~ function ego:bh_virus_2/disguise_0
execute @s[score_BHVR2prng_min=1,score_BHVR2prng=1] ~ ~ ~ function ego:bh_virus_2/disguise_1
execute @s[score_BHVR2prng_min=2,score_BHVR2prng=2] ~ ~ ~ function ego:bh_virus_2/disguise_2
execute @s[score_BHVR2prng_min=3,score_BHVR2prng=3] ~ ~ ~ function ego:bh_virus_2/disguise_3
execute @s[score_BHVR2prng_min=4,score_BHVR2prng=4] ~ ~ ~ function ego:bh_virus_2/disguise_4
execute @s[score_BHVR2prng_min=5,score_BHVR2prng=5] ~ ~ ~ function ego:bh_virus_2/disguise_5
