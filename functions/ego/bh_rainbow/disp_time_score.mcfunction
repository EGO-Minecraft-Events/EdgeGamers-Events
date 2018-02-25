scoreboard players operation Seconds BHRAti = @s BHRAti
scoreboard players operation Seconds BHRAti /= 20 constants
scoreboard players operation Seconds BHRAti %= 60 constants
scoreboard players add Seconds BHRAti 1
scoreboard players operation Seconds BHRA = Seconds BHRAti
scoreboard players operation Minutes BHRAti = @s BHRAti
scoreboard players operation Minutes BHRAti /= 1200 constants
scoreboard players operation Minutes BHRA = Minutes BHRAti
