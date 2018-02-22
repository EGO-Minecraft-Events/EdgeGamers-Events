scoreboard players set @s BHVR2gl 3
execute @s[score_BHVR2chi_min=0,score_BHVR2chi=0] ~ ~ ~ title @a title {"text":"The seekers won!","color":"yellow"}
execute @s[score_BHVR2chi_min=0,score_BHVR2chi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BH Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1237719706"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The seekers won!","color":"yellow"}]}
execute @s[score_BHVR2chi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_BHVR2chi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_BHVR2chi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BH Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1237719706"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! Hiders win!","color":"yellow"}]}
execute @s[score_BHVR2chi_min=1] ~ ~ ~ scoreboard players reset Seconds BHVR2
execute @s[score_BHVR2chi_min=1] ~ ~ ~ scoreboard players reset Minutes BHVR2
fill -64 63 -67 -59 63 -72 redstone_block 0 replace stonebrick 0
fill -65 60 -66 -58 60 -73 redstone_block 0 replace stonebrick 0
scoreboard players set @s BHVR2st 5
