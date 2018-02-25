scoreboard players operation @s BHFCcalc = BHFCGlowing BHFCcalc
scoreboard players operation @s BHFCcalc -= @s BHFCti
execute @s[score_BHFCcalc_min=0,score_BHFCcalc=0] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHFC","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Four Corners","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 526354106"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Glowing has been removed from all seekers!","color":"yellow"}]}
execute @s[score_BHFCcalc_min=0,score_BHFCcalc=0] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:entity.experience_orb.pickup voice @a[c=1]
scoreboard players set @s[score_BHFCcalc_min=0,score_BHFCcalc=0] BHFCgl 0
