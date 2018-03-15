scoreboard players operation @s BHAcalc = &Glowing BHAcalc
scoreboard players operation @s BHAcalc -= @s BHAti
execute @s[score_BHAcalc_min=0,score_BHAcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Apocalypse","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1203107457"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHAcalc_min=0,score_BHAcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHAcalc_min=0,score_BHAcalc=0] BHAgl 0
