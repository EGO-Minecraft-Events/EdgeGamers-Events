scoreboard players operation @s VR2calc = &Glowing VR2calc
scoreboard players operation @s VR2calc -= @s VR2ti
execute @s[score_VR2calc_min=0,score_VR2calc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"VR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 763826195"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all virus!","color":"yellow"}]}
execute @s[score_VR2calc_min=0,score_VR2calc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_VR2calc_min=0,score_VR2calc=0] VR2gl 0
