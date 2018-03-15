scoreboard players operation Seconds BHMMti = @s BHMMti
scoreboard players operation Seconds BHMMti /= 20 constants
scoreboard players operation Seconds BHMMti %= 60 constants
scoreboard players add Seconds BHMMti 1
scoreboard players operation Seconds BHMM = Seconds BHMMti
scoreboard players operation Minutes BHMMti = @s BHMMti
scoreboard players operation Minutes BHMMti /= 1200 constants
scoreboard players operation Minutes BHMM = Minutes BHMMti
