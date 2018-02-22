scoreboard players operation @s BHRAcalc = BHRAGlowing BHRAcalc
scoreboard players operation @s BHRAcalc -= @s BHRAti
execute @s[score_BHRAcalc_min=0,score_BHRAcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Rainbow","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 658982564"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHRAcalc_min=0,score_BHRAcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHRAcalc_min=0,score_BHRAcalc=0] BHRAgl 0
