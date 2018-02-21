scoreboard players set @s BHMgl 3
execute @s[score_BHMchi_min=0,score_BHMchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHMchi_min=0,score_BHMchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1807172851"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHMchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHMchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHMchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1807172851"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! Hiders win!","color":"yellow"}]}
execute @s[score_BHMchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHM
execute @s[score_BHMchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHM
scoreboard players set @s BHMst 5
