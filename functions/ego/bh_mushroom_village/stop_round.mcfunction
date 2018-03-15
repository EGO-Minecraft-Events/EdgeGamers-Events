scoreboard players set @s BHMVgl 3
execute @s[score_BHMVchi_min=0,score_BHMVchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHMVchi_min=0,score_BHMVchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mushroom Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 607841732"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHMVchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHMVchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHMVchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mushroom Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 607841732"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! The hiders won!","color":"yellow"}]}
execute @s[score_BHMVchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHMV
execute @s[score_BHMVchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHMV
execute @a ~ ~ ~ function ego:bh_mushroom_village/undisguise_player
scoreboard players set @s BHMVst 5
