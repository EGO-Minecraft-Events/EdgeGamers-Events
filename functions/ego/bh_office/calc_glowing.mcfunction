scoreboard players operation @s BHOcalc = BHOGlowing BHOcalc
scoreboard players operation @s BHOcalc -= @s BHOti
execute @s[score_BHOcalc_min=0,score_BHOcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHO","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Office","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 863633014"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHOcalc_min=0,score_BHOcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHOcalc_min=0,score_BHOcalc=0] BHOgl 0
