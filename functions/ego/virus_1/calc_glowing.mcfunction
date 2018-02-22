scoreboard players operation @s VR1calc = &Glowing VR1calc
scoreboard players operation @s VR1calc -= @s VR1ti
execute @s[score_VR1calc_min=0,score_VR1calc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"VR1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1095056157"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all virus!","color":"yellow"}]}
execute @s[score_VR1calc_min=0,score_VR1calc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_VR1calc_min=0,score_VR1calc=0] VR1gl 0
