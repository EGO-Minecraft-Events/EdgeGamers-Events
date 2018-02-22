scoreboard players operation &Timer1 ADcl = @s ADiti1
scoreboard players operation &Seconds1 ADcl = &Timer1 ADcl
scoreboard players operation &Seconds1 ADcl /= 20 constants
scoreboard players operation &Decimal1 ADcl = &Timer1 ADcl
scoreboard players operation &Decimal1 ADcl %= 20 constants
scoreboard players operation &Decimal1 ADcl *= 5 constants
scoreboard players reset &Additional1 ADcl
scoreboard players operation @s ADcl = &Decimal1 ADcl
execute @s[score_ADcl_min=5,score_ADcl=5] ~ ~ ~ scoreboard players set &Additional1 ADcl 0
scoreboard players set @s ADiti1 -1
