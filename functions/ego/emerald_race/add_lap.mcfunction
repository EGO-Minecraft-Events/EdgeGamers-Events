scoreboard players add @s ER 1
tellraw @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"ER","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" has finished a lap!","color":"yellow"}]}
playsound minecraft:entity.experience_orb.pickup voice @a
scoreboard players tag @s add ERLap
