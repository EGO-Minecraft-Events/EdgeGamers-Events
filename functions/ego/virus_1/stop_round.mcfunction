scoreboard players set @s VR1gl 3
execute @s[score_VR1chi_min=0,score_VR1chi=0] ~ ~ ~ title @a title {"text":"The virus won!","color":"yellow"}
execute @s[score_VR1chi_min=0,score_VR1chi=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"VR1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1095056157"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The virus won!","color":"yellow"}]}
execute @s[score_VR1chi_min=1] ~ ~ ~ title @a title {"text":"Time!","color":"green"}
execute @s[score_VR1chi_min=1] ~ ~ ~ title @a subtitle {"text":"The hiders won!","color":"green"}
execute @s[score_VR1chi_min=1] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"VR1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1095056157"}},{"text":"]","color":"gray"},{"text":": "},{"text":"The time is up! hiders won!","color":"yellow"}]}
execute @s[score_VR1chi_min=1] ~ ~ ~ scoreboard players reset Seconds VR1
execute @s[score_VR1chi_min=1] ~ ~ ~ scoreboard players reset Minutes VR1
fill -73 52 -222 -66 52 -229 redstone_block 0 replace stonebrick 0
fill -73 49 -229 -66 49 -222 redstone_block 0 replace stonebrick 0
scoreboard players set @s VR1st 5
