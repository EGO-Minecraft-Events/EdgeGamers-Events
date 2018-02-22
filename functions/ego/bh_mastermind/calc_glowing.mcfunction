scoreboard players operation @s BHMMcalc = BHMMGlowing BHMMcalc
scoreboard players operation @s BHMMcalc -= @s BHMMti
execute @s[score_BHMMcalc_min=0,score_BHMMcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 498683800"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHMMcalc_min=0,score_BHMMcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHMMcalc_min=0,score_BHMMcalc=0] BHMMgl 0
