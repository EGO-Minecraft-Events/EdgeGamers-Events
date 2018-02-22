scoreboard players operation @s BHPcalc = BHPGlowing BHPcalc
scoreboard players operation @s BHPcalc -= @s BHPti
execute @s[score_BHPcalc_min=0,score_BHPcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHP","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Park","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 818788035"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHPcalc_min=0,score_BHPcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHPcalc_min=0,score_BHPcalc=0] BHPgl 0
