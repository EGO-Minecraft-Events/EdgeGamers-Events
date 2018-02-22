scoreboard players operation @s BHMVcalc = BHMVGlowing BHMVcalc
scoreboard players operation @s BHMVcalc -= @s BHMVti
execute @s[score_BHMVcalc_min=0,score_BHMVcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mushroom Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 607841732"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHMVcalc_min=0,score_BHMVcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHMVcalc_min=0,score_BHMVcalc=0] BHMVgl 0
