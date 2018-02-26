function ego:pictionary/choose_artist
execute @s[score_PCst_min=1,score_PCst=1] ~ ~ ~ tellraw @a[score_HOST_min=0,score_HOST=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"text":"No artist was chosen","color":"red"}]}
scoreboard players set @s[score_PCst_min=1,score_PCst=1] PCst 0
execute @s[score_PCst_min=2,score_PCst=2] ~ ~ ~ function ego:pictionary/finalize_start_round
