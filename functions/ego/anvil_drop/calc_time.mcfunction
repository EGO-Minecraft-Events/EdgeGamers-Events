scoreboard players add @s ADti1 1
scoreboard players add @s ADti2 1
scoreboard players add @s ADti3 1
scoreboard players operation @s ADcl = &Timer1 ADcl
scoreboard players operation @s ADcl -= @s ADti1
execute @s[score_ADcl=0] ~ ~ ~ function ego:anvil_drop/run_layer_1
scoreboard players set @s[score_ADcl=0] ADti1 0
scoreboard players operation @s ADcl = &Timer2 ADcl
scoreboard players operation @s ADcl -= @s ADti2
execute @s[score_ADcl=0] ~ ~ ~ function ego:anvil_drop/run_layer_2
scoreboard players set @s[score_ADcl=0] ADti2 0
scoreboard players operation @s ADcl = &Timer3 ADcl
scoreboard players operation @s ADcl -= @s ADti3
execute @s[score_ADcl=0] ~ ~ ~ function ego:anvil_drop/run_walls
scoreboard players set @s[score_ADcl=0] ADti3 0
