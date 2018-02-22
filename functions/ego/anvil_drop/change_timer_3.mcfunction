scoreboard players operation &Timer3 ADcl = @s ADiti3
scoreboard players operation &Seconds3 ADcl = &Timer3 ADcl
scoreboard players operation &Seconds3 ADcl /= 20 constants
scoreboard players operation &Decimal3 ADcl = &Timer3 ADcl
scoreboard players operation &Decimal3 ADcl %= 20 constants
scoreboard players operation &Decimal3 ADcl *= 5 constants
scoreboard players reset &Additional3 ADcl
scoreboard players operation @s ADcl = &Decimal3 ADcl
execute @s[score_ADcl_min=5,score_ADcl=5] ~ ~ ~ scoreboard players set &Additional3 ADcl 0
scoreboard players set @s ADiti3 -1
