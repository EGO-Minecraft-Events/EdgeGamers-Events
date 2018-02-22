tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"DirtR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Dirt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 2140645621"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" took third place!","color":"green"}]}
playsound minecraft:entity.player.levelup voice @a
setblock 61 12 -203 redstone_block
scoreboard players set @s DirtRbc 3
function ego:dirt_race/finalize_set_place
