scoreboard players set @s BHRAgl 3
execute @s[score_BHRAchi_min=0,score_BHRAchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHRAchi_min=0,score_BHRAchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Rainbow","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 658982564"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHRAchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHRAchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHRAchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Rainbow","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 658982564"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! Hiders win!","color":"yellow"}]}
execute @s[score_BHRAchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHRA
execute @s[score_BHRAchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHRA
scoreboard players set @s BHRAst 5
