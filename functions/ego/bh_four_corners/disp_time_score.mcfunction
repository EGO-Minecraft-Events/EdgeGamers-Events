scoreboard players operation Seconds BHFCti = @s BHFCti
scoreboard players operation Seconds BHFCti /= 20 constants
scoreboard players operation Seconds BHFCti %= 60 constants
scoreboard players add Seconds BHFCti 1
scoreboard players operation Seconds BHFC = Seconds BHFCti
scoreboard players operation Minutes BHFCti = @s BHFCti
scoreboard players operation Minutes BHFCti /= 1200 constants
scoreboard players operation Minutes BHFC = Minutes BHFCti
