tellraw @a[x=34,y=2,z=-64,dx=141,dy=69,dz=43] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"IR","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Ice race","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 227577150"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" took second place!","color":"green"}]}
playsound minecraft:entity.player.levelup voice @a
setblock 42 33 -28 redstone_block
scoreboard players set @s IRbc 2
function ego:ice_race/finalize_set_place
