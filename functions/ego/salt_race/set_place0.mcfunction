tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"SaltR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Salt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 942958520"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" took first place!","color":"green"}]}
playsound minecraft:entity.player.levelup voice @a
setblock 459 11 -35 redstone_block
scoreboard players set @s SaltRbc 1
function ego:salt_race/finalize_set_place
