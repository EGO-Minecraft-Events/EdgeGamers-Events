scoreboard players operation Seconds BHCDEti = @s BHCDEti
scoreboard players operation Seconds BHCDEti /= 20 constants
scoreboard players operation Seconds BHCDEti %= 60 constants
scoreboard players add Seconds BHCDEti 1
scoreboard players operation Seconds BHCDE = Seconds BHCDEti
scoreboard players operation Minutes BHCDEti = @s BHCDEti
scoreboard players operation Minutes BHCDEti /= 1200 constants
scoreboard players operation Minutes BHCDE = Minutes BHCDEti
