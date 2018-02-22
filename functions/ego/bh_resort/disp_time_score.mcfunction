scoreboard players operation Seconds BHREti = @s BHREti
scoreboard players operation Seconds BHREti /= 20 constants
scoreboard players operation Seconds BHREti %= 60 constants
scoreboard players add Seconds BHREti 1
scoreboard players operation Seconds BHRE = Seconds BHREti
scoreboard players operation Minutes BHREti = @s BHREti
scoreboard players operation Minutes BHREti /= 1200 constants
scoreboard players operation Minutes BHRE = Minutes BHREti
