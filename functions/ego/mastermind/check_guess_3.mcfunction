say @s check_guess_3
scoreboard players set @s MMcl 0
scoreboard players set @s[score_MMign_min=1,score_MMign=1,score_MMgn_min=1,score_MMgn=1] MMcl 1
scoreboard players set @s[score_MMign_min=2,score_MMign=2,score_MMgn_min=2,score_MMgn=2] MMcl 1
scoreboard players set @s[score_MMign_min=3,score_MMign=3,score_MMgn_min=3,score_MMgn=3] MMcl 1
scoreboard players set @s[score_MMign_min=4,score_MMign=4,score_MMgn_min=4,score_MMgn=4] MMcl 1
scoreboard players set @s[score_MMign_min=5,score_MMign=5,score_MMgn_min=5,score_MMgn=5] MMcl 1
execute @s[score_MMcl_min=0,score_MMcl=0,score_MMgn_min=1,score_MMgn=1] ~ ~ ~ tellraw @a[score_MMrn_min=3,score_MMrn=3] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"Please use guess 1.","color":"gold"}]}
execute @s[score_MMcl_min=0,score_MMcl=0,score_MMgn_min=2,score_MMgn=2] ~ ~ ~ tellraw @a[score_MMrn_min=3,score_MMrn=3] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"Please use guess 2.","color":"gold"}]}
execute @s[score_MMcl_min=0,score_MMcl=0,score_MMgn_min=3,score_MMgn=3] ~ ~ ~ tellraw @a[score_MMrn_min=3,score_MMrn=3] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"Please use guess 3.","color":"gold"}]}
execute @s[score_MMcl_min=0,score_MMcl=0,score_MMgn_min=4,score_MMgn=4] ~ ~ ~ tellraw @a[score_MMrn_min=3,score_MMrn=3] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"Please use guess 4.","color":"gold"}]}
execute @s[score_MMcl_min=0,score_MMcl=0,score_MMgn_min=5,score_MMgn=5] ~ ~ ~ tellraw @a[score_MMrn_min=3,score_MMrn=3] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"Please use guess 5.","color":"gold"}]}
execute @s[score_MMcl_min=1,score_MMcl=1] ~ ~ ~ function ego:mastermind/select_player_for_guess_3
scoreboard players operation @s[score_MMcl_min=2,score_MMcl=2] MMpl = @s MMgn
scoreboard players operation @s[score_MMcl_min=2,score_MMcl=2] MMpl *= -1 constants
scoreboard players remove @s[score_MMcl_min=2,score_MMcl=2,score_MMca_min=0,score_MMca=0] MMpl 100
scoreboard players operation @a[score_MMrn_min=3,score_MMrn=3] MMec = @s MMpl
scoreboard players add @s[score_MMcl_min=2,score_MMcl=2] MMgn 1
scoreboard players set @s MMcl 0
