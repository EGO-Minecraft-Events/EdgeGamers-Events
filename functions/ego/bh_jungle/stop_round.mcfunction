scoreboard players set @s BHJgl 3
execute @s[score_BHJchi_min=0,score_BHJchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHJchi_min=0,score_BHJchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHJ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Jungle","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 184603297"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHJchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHJchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHJchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHJ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Jungle","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 184603297"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! Hiders win!","color":"yellow"}]}
execute @s[score_BHJchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHJ
execute @s[score_BHJchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHJ
scoreboard players set @s BHJst 5
