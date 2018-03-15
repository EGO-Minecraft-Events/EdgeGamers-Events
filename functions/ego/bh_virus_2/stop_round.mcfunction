scoreboard players set @s BHVR2gl 3
execute @s[score_BHVR2chi_min=0,score_BHVR2chi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHVR2chi_min=0,score_BHVR2chi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 98805618"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHVR2chi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHVR2chi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHVR2chi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 98805618"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! The hiders won!","color":"yellow"}]}
execute @s[score_BHVR2chi_min=1] ~ ~ ~ scoreboard players reset Seconds BHVR2
execute @s[score_BHVR2chi_min=1] ~ ~ ~ scoreboard players reset Minutes BHVR2
execute @a ~ ~ ~ function ego:bh_virus_2/undisguise_player
scoreboard players set @s BHVR2st 5
