scoreboard players operation Seconds BHOti = @s BHOti
scoreboard players operation Seconds BHOti /= 20 constants
scoreboard players operation Seconds BHOti %= 60 constants
scoreboard players add Seconds BHOti 1
scoreboard players operation Seconds BHO = Seconds BHOti
scoreboard players operation Minutes BHOti = @s BHOti
scoreboard players operation Minutes BHOti /= 1200 constants
scoreboard players operation Minutes BHO = Minutes BHOti
