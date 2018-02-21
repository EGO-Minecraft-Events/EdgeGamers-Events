scoreboard players operation @s BHMcalc = BHMGlowing BHMcalc
scoreboard players operation @s BHMcalc -= @s BHMti
execute @s[score_BHMcalc_min=0,score_BHMcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1807172851"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHMcalc_min=0,score_BHMcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHMcalc_min=0,score_BHMcalc=0] BHMgl 0
