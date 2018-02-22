tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"AD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":"]","color":"gray"},{"text":": "},{"text":"GO!","color":"green","bold":"true"}]}
scoreboard players reset Countdown AD
execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ playsound entity.experience_orb.touch voice @s
scoreboard players operation @s ADti1 = &Timer1 ADcl
scoreboard players operation @s ADti2 = &Timer2 ADcl
scoreboard players operation @s ADti3 = &Timer3 ADcl
scoreboard players set @s ADst 3
