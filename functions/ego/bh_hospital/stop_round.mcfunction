scoreboard players set @s BHHgl 3
execute @s[score_BHHchi_min=0,score_BHHchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHHchi_min=0,score_BHHchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHH","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Hospital","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1159673785"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHHchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHHchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHHchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHH","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Hospital","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1159673785"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! hiders won!","color":"yellow"}]}
execute @s[score_BHHchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHH
execute @s[score_BHHchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHH
scoreboard players set @s BHHst 5
