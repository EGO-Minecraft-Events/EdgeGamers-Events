scoreboard players set @s BHAgl 3
execute @s[score_BHAchi_min=0,score_BHAchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHAchi_min=0,score_BHAchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Apocalypse","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1203107457"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHAchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHAchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHAchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Apocalypse","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1203107457"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! The hiders won!","color":"yellow"}]}
execute @s[score_BHAchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHA
execute @s[score_BHAchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHA
execute @a ~ ~ ~ function ego:bh_apocalypse/undisguise_player
scoreboard players set @s BHAst 5
