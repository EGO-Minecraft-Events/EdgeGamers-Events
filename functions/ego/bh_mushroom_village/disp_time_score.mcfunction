scoreboard players operation Seconds BHMVti = @s BHMVti
scoreboard players operation Seconds BHMVti /= 20 constants
scoreboard players operation Seconds BHMVti %= 60 constants
scoreboard players add Seconds BHMVti 1
scoreboard players operation Seconds BHMV = Seconds BHMVti
scoreboard players operation Minutes BHMVti = @s BHMVti
scoreboard players operation Minutes BHMVti /= 1200 constants
scoreboard players operation Minutes BHMV = Minutes BHMVti
