say running ego:bh_hospital/calc_glowing
scoreboard players operation @s BHHcalc = BHHGlowing BHHcalc
scoreboard players operation @s BHHcalc -= @s BHHti
execute @s[score_BHHcalc_min=0,score_BHHcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHH","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Hospital","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1159673785"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHHcalc_min=0,score_BHHcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHHcalc_min=0,score_BHHcalc=0] BHHgl 0
