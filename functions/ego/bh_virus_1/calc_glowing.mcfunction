scoreboard players operation @s BHVR1calc = &Glowing BHVR1calc
scoreboard players operation @s BHVR1calc -= @s BHVR1ti
execute @s[score_BHVR1calc_min=0,score_BHVR1calc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 8130627"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHVR1calc_min=0,score_BHVR1calc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHVR1calc_min=0,score_BHVR1calc=0] BHVR1gl 0
