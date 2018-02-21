scoreboard players operation Seconds BHMti = @s BHMti
scoreboard players operation Seconds BHMti /= 20 constants
scoreboard players operation Seconds BHMti %= 60 constants
scoreboard players add Seconds BHMti 1
scoreboard players operation Seconds BHM = Seconds BHMti
scoreboard players operation Minutes BHMti = @s BHMti
scoreboard players operation Minutes BHMti /= 1200 constants
scoreboard players operation Minutes BHM = Minutes BHMti
