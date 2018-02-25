scoreboard players operation @s BHCDEcalc = BHCDEGlowing BHCDEcalc
scoreboard players operation @s BHCDEcalc -= @s BHCDEti
execute @s[score_BHCDEcalc_min=0,score_BHCDEcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHCDE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Castle de Emmy","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 606156446"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHCDEcalc_min=0,score_BHCDEcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHCDEcalc_min=0,score_BHCDEcalc=0] BHCDEgl 0
