scoreboard players set @s BHHDgl 3
execute @s[score_BHHDchi_min=0,score_BHHDchi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHHDchi_min=0,score_BHHDchi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHHD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"HASDaa","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 478919104"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHHDchi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHHDchi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHHDchi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHHD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"HASDaa","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 478919104"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! The hiders won!","color":"yellow"}]}
execute @s[score_BHHDchi_min=1] ~ ~ ~ scoreboard players reset Seconds BHHD
execute @s[score_BHHDchi_min=1] ~ ~ ~ scoreboard players reset Minutes BHHD
execute @a ~ ~ ~ function ego:bh_hasdaa/undisguise_player
scoreboard players set @s BHHDst 5
