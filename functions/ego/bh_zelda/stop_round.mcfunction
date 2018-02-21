scoreboard players set @s BHZgl 3
execute @s[score_BHZchi_min=0,score_BHZchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHZchi_min=0,score_BHZchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHZ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Zelda","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244635863"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHZchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHZchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHZchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHZ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Zelda","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244635863"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! Hiders win!","color":"yellow"}]}
execute @s[score_BHZchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHZ
execute @s[score_BHZchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHZ
scoreboard players set @s BHZst 5
