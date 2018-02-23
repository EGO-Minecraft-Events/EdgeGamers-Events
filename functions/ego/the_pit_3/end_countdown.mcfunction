execute @a ~ ~ ~ playsound minecraft:entity.wither.death voice @s
tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"TPL3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Begin","color":"green","bold":"true"}]}
scoreboard players reset Countdown TP
fill -77 17 172 -81 22 176 air
scoreboard players set @s TPst 3
