scoreboard players remove @s[score_TPti_min=1] TPti 1
scoreboard players operation Countdown TPcl = @s TPti
scoreboard players operation Countdown TPcl /= 20 constants
scoreboard players add Countdown TPcl 1
scoreboard players operation Countdown TP = Countdown TPcl
effect @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2] 18 3 100 true
execute @s[score_TPti_min=100,score_TPti=100] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"TPL3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":"]","color":"gray"},{"text":": "},{"text":"5","color":"yellow","bold":"true"}]}
execute @s[score_TPti_min=100,score_TPti=100] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s ~ ~ ~ 0.5
execute @s[score_TPti_min=80,score_TPti=80] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"TPL3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":"]","color":"gray"},{"text":": "},{"text":"4","color":"yellow","bold":"true"}]}
execute @s[score_TPti_min=80,score_TPti=80] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s ~ ~ ~ 1
execute @s[score_TPti_min=60,score_TPti=60] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"TPL3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":"]","color":"gray"},{"text":": "},{"text":"3","color":"yellow","bold":"true"}]}
execute @s[score_TPti_min=60,score_TPti=60] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s ~ ~ ~ 1.5
execute @s[score_TPti_min=40,score_TPti=40] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"TPL3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":"]","color":"gray"},{"text":": "},{"text":"2","color":"yellow","bold":"true"}]}
execute @s[score_TPti_min=40,score_TPti=40] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s ~ ~ ~ 2
execute @s[score_TPti_min=20,score_TPti=20] ~ ~ ~ tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"TPL3","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"The Pit 3","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 586508005"}},{"text":"]","color":"gray"},{"text":": "},{"text":"1","color":"yellow","bold":"true"}]}
execute @s[score_TPti_min=20,score_TPti=20] ~ ~ ~ execute @a ~ ~ ~ playsound minecraft:block.note.pling voice @s ~ ~ ~ 2
execute @s[score_TPti_min=0,score_TPti=0] ~ ~ ~ function ego:the_pit_3/end_countdown
