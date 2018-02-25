scoreboard players set @s BHCDEgl 3
execute @s[score_BHCDEchi_min=0,score_BHCDEchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHCDEchi_min=0,score_BHCDEchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHCDE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Castle de Emmy","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 606156446"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHCDEchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHCDEchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHCDEchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHCDE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Castle de Emmy","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 606156446"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! Hiders win!","color":"yellow"}]}
execute @s[score_BHCDEchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHCDE
execute @s[score_BHCDEchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHCDE
scoreboard players set @s BHCDEst 5
