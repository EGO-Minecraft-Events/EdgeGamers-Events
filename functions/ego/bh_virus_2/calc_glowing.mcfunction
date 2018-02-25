scoreboard players operation @s BHVR2calc = BHVR2Glowing BHVR2calc
scoreboard players operation @s BHVR2calc -= @s BHVR2ti
execute @s[score_BHVR2calc_min=0,score_BHVR2calc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 98805618"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHVR2calc_min=0,score_BHVR2calc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHVR2calc_min=0,score_BHVR2calc=0] BHVR2gl 0
