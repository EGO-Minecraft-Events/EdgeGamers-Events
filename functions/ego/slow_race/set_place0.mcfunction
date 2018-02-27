tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"SR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Slow Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 720573389"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" took first place!","color":"green"}]}
playsound minecraft:entity.player.levelup voice @a
setblock 70 11 -80 redstone_block
scoreboard players set @s SRbc 1
function ego:slow_race/finalize_set_place
