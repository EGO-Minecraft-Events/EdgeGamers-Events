scoreboard players operation @s BHREcalc = BHREGlowing BHREcalc
scoreboard players operation @s BHREcalc -= @s BHREti
execute @s[score_BHREcalc_min=0,score_BHREcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Resort","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1456309508"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHREcalc_min=0,score_BHREcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHREcalc_min=0,score_BHREcalc=0] BHREgl 0
