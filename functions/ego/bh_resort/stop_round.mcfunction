scoreboard players set @s BHREgl 3
execute @s[score_BHREchi_min=0,score_BHREchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHREchi_min=0,score_BHREchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Resort","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1317713609"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHREchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHREchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHREchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Resort","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1317713609"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! Hiders win!","color":"yellow"}]}
execute @s[score_BHREchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHRE
execute @s[score_BHREchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHRE
scoreboard players set @s BHREst 5
