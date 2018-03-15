scoreboard players set @s BHPgl 3
execute @s[score_BHPchi_min=0,score_BHPchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHPchi_min=0,score_BHPchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHP","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Park","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 818788035"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHPchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHPchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHPchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHP","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Park","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 818788035"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! The hiders won!","color":"yellow"}]}
execute @s[score_BHPchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHP
execute @s[score_BHPchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHP
execute @a ~ ~ ~ function ego:bh_park/undisguise_player
scoreboard players set @s BHPst 5
