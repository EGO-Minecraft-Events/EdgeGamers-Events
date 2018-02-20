tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"IR","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Ice race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 227577150"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" took first place!","color":"green"}]}
playsound minecraft:entity.player.levelup voice @a
fill 42 33 -31 42 33 -32 redstone_block
scoreboard players set @s IRbc 1
function ego:ice_race/finalize_set_place
