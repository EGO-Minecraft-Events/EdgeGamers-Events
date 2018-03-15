scoreboard players set @s BHTSgl 3
execute @s[score_BHTSchi_min=0,score_BHTSchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHTSchi_min=0,score_BHTSchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHTS","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Train Station","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 993875352"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHTSchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHTSchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHTSchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHTS","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Train Station","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 993875352"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! The hiders won!","color":"yellow"}]}
execute @s[score_BHTSchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHTS
execute @s[score_BHTSchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHTS
execute @a ~ ~ ~ function ego:bh_train_station/undisguise_player
scoreboard players set @s BHTSst 5
