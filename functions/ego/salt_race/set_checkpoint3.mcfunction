playsound minecraft:entity.player.levelup voice @s
tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"SaltR","color":"gray","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Salt Race","color":"gray"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 942958520"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" has reached checkpoint 3!","color":"yellow"}]}
scoreboard players set @s SaltRcp 3
