scoreboard players remove @s ADti 1
execute @s[score_ADti_min=100,score_ADti=100] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"AD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":"]","color":"gray"},{"text":": "},{"text":"5","color":"yellow","bold":"true"}]}
execute @s[score_ADti_min=100,score_ADti=100] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s
execute @s[score_ADti_min=80,score_ADti=80] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"AD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":"]","color":"gray"},{"text":": "},{"text":"4","color":"yellow","bold":"true"}]}
execute @s[score_ADti_min=80,score_ADti=80] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s
execute @s[score_ADti_min=60,score_ADti=60] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"AD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":"]","color":"gray"},{"text":": "},{"text":"3","color":"yellow","bold":"true"}]}
execute @s[score_ADti_min=60,score_ADti=60] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s
execute @s[score_ADti_min=40,score_ADti=40] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"AD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":"]","color":"gray"},{"text":": "},{"text":"2","color":"yellow","bold":"true"}]}
execute @s[score_ADti_min=40,score_ADti=40] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s
execute @s[score_ADti_min=20,score_ADti=20] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"AD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":"]","color":"gray"},{"text":": "},{"text":"1","color":"yellow","bold":"true"}]}
execute @s[score_ADti_min=20,score_ADti=20] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s
scoreboard players operation Countdown ADcl = @s ADti
scoreboard players operation Countdown ADcl /= 20 constants
scoreboard players add Countdown ADcl 1
scoreboard players operation Countdown AD = Countdown ADcl
execute @s[score_ADti=0] ~ ~ ~ function ego:anvil_drop/end_countdown
