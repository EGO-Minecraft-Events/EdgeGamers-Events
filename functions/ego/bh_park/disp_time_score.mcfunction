scoreboard players operation Seconds BHPti = @s BHPti
scoreboard players operation Seconds BHPti /= 20 constants
scoreboard players operation Seconds BHPti %= 60 constants
scoreboard players add Seconds BHPti 1
scoreboard players operation Seconds BHP = Seconds BHPti
scoreboard players operation Minutes BHPti = @s BHPti
scoreboard players operation Minutes BHPti /= 1200 constants
scoreboard players operation Minutes BHP = Minutes BHPti
