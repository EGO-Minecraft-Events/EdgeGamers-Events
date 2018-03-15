scoreboard players operation @s BHASVcalc = &Glowing BHASVcalc
scoreboard players operation @s BHASVcalc -= @s BHASVti
execute @s[score_BHASVcalc_min=0,score_BHASVcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHASV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"A Small Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244577678"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHASVcalc_min=0,score_BHASVcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHASVcalc_min=0,score_BHASVcalc=0] BHASVgl 0
