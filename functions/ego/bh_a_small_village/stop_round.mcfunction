scoreboard players set @s BHASVgl 3
execute @s[score_BHASVchi_min=0,score_BHASVchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHASVchi_min=0,score_BHASVchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHASV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"A Small Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244577678"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHASVchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHASVchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHASVchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHASV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"A Small Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244577678"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! The hiders won!","color":"yellow"}]}
execute @s[score_BHASVchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHASV
execute @s[score_BHASVchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHASV
execute @a ~ ~ ~ function ego:bh_a_small_village/undisguise_player
scoreboard players set @s BHASVst 5
