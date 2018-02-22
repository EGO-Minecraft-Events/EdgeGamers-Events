scoreboard players operation &Timer2 ADcl = @s ADiti2
scoreboard players operation &Seconds2 ADcl = &Timer2 ADcl
scoreboard players operation &Seconds2 ADcl /= 20 constants
scoreboard players operation &Decimal2 ADcl = &Timer2 ADcl
scoreboard players operation &Decimal2 ADcl %= 20 constants
scoreboard players operation &Decimal2 ADcl *= 5 constants
scoreboard players reset &Additional2 ADcl
scoreboard players operation @s ADcl = &Decimal2 ADcl
execute @s[score_ADcl_min=5,score_ADcl=5] ~ ~ ~ scoreboard players set &Additional2 ADcl 0
scoreboard players set @s ADiti2 -1
