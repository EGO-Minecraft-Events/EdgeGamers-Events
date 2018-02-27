tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"NR","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Nether Race","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1061722156"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" took second place!","color":"green"}]}
playsound minecraft:entity.player.levelup voice @a
setblock 73 12 -100 redstone_block
scoreboard players set @s NRbc 2
function ego:nether_race/finalize_set_place
