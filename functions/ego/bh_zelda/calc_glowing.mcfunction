scoreboard players operation @s BHZcalc = &Glowing BHZcalc
scoreboard players operation @s BHZcalc -= @s BHZti
execute @s[score_BHZcalc_min=0,score_BHZcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHZ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Zelda","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 558233482"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHZcalc_min=0,score_BHZcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHZcalc_min=0,score_BHZcalc=0] BHZgl 0
