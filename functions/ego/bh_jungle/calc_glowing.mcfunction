scoreboard players operation @s BHJcalc = BHJGlowing BHJcalc
scoreboard players operation @s BHJcalc -= @s BHJti
execute @s[score_BHJcalc_min=0,score_BHJcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHJ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Jungle","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 184603297"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHJcalc_min=0,score_BHJcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHJcalc_min=0,score_BHJcalc=0] BHJgl 0
