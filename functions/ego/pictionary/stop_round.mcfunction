execute @a[score_gSA_min=1,score_gSA=1,m=2,score_PCpl_min=2,score_PCpl=2] ~ ~ ~ function ego:pictionary/round_reset_player
scoreboard players reset Time_Elapsed PC
title @a title {"text":"Round Over!","color":"dark_aqua","underlined":true}
tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@e[type=area_effect_cloud,tag=PCTopic,score_PCrd_min=1,score_PCrd=1]","bold":"true"},{"text":" is the answer!","color":"gray"}]}
pictionary clear
kill @e[type=area_effect_cloud,tag=PCTopic,score_PCrd_min=1,score_PCrd=1]
scoreboard players set @s PCst 0
