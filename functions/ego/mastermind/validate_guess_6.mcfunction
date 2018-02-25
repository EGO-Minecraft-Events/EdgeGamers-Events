summon area_effect_cloud ~2 ~ ~ {Tags:["MMEntity","MMGuess","MMGuess1"],Duration:5}
summon area_effect_cloud ~3 ~ ~ {Tags:["MMEntity","MMGuess","MMGuess2"],Duration:5}
summon area_effect_cloud ~4 ~ ~ {Tags:["MMEntity","MMGuess","MMGuess3"],Duration:5}
summon area_effect_cloud ~5 ~ ~ {Tags:["MMEntity","MMGuess","MMGuess4"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMEntity","MMRepeat","MMRepeat1"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMEntity","MMRepeat","MMRepeat2"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMEntity","MMRepeat","MMRepeat3"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMEntity","MMRepeat","MMRepeat4"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMEntity","MMRepeat","MMRepeat5"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMEntity","MMRepeat","MMRepeat6"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMEntity","MMDisplay","MMWhite"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMEntity","MMDisplay","MMRed"],Duration:5}
scoreboard players set @e[x=108,y=4,z=36,dx=-7,dy=5,dz=-12,type=area_effect_cloud] MMrn 6
scoreboard players add @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess] MMbi 0
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess] ~ ~ ~ detect ~ ~-1 ~ wool 14 scoreboard players set @s MMbi 1
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess] ~ ~ ~ detect ~ ~-1 ~ wool 5 scoreboard players set @s MMbi 2
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess] ~ ~ ~ detect ~ ~-1 ~ wool 9 scoreboard players set @s MMbi 3
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess] ~ ~ ~ detect ~ ~-1 ~ wool 2 scoreboard players set @s MMbi 4
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess] ~ ~ ~ detect ~ ~-1 ~ wool 6 scoreboard players set @s MMbi 5
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess] ~ ~ ~ detect ~ ~-1 ~ wool 1 scoreboard players set @s MMbi 6
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess,score_MMbi_min=1,score_MMbi=1] ~ ~ ~ scoreboard players add @e[score_MMrn_min=6,score_MMrn=6,tag=MMRepeat1] MMcl 1
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess,score_MMbi_min=2,score_MMbi=2] ~ ~ ~ scoreboard players add @e[score_MMrn_min=6,score_MMrn=6,tag=MMRepeat2] MMcl 1
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess,score_MMbi_min=3,score_MMbi=3] ~ ~ ~ scoreboard players add @e[score_MMrn_min=6,score_MMrn=6,tag=MMRepeat3] MMcl 1
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess,score_MMbi_min=4,score_MMbi=4] ~ ~ ~ scoreboard players add @e[score_MMrn_min=6,score_MMrn=6,tag=MMRepeat4] MMcl 1
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess,score_MMbi_min=5,score_MMbi=5] ~ ~ ~ scoreboard players add @e[score_MMrn_min=6,score_MMrn=6,tag=MMRepeat5] MMcl 1
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMGuess,score_MMbi_min=6,score_MMbi=6] ~ ~ ~ scoreboard players add @e[score_MMrn_min=6,score_MMrn=6,tag=MMRepeat6] MMcl 1
scoreboard players add @s MMra 0
execute @e[score_MMrn_min=6,score_MMrn=6,tag=MMRepeat,score_MMcl_min=2] ~ ~ ~ scoreboard players set @a[score_MMrn_min=6,score_MMrn=6,score_MMcl_min=1,score_MMcl=1] MMra 1
scoreboard players add @s MMna 0
execute @e[tag=MMGuess,score_MMbi_min=0,score_MMbi=0] ~ ~ ~ scoreboard players set @a[score_MMrn_min=6,score_MMrn=6,score_MMcl_min=1,score_MMcl=1] MMna 1
execute @s[score_MMra_min=1,score_MMra=1] ~ ~ ~ tellraw @a[score_MMrn_min=6,score_MMrn=6] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"There are repeated colors. Please redo your guess.","color":"gold"}]}
execute @s[score_MMna_min=1,score_MMna=1] ~ ~ ~ tellraw @a[score_MMrn_min=6,score_MMrn=6] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MM","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1217546713"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"There is at least one missing block. Please redo your guess.","color":"gold"}]}
execute @s[score_MMra_min=0,score_MMra=0,score_MMna_min=0,score_MMna=0] ~ ~ ~ function ego:mastermind/display_guess_6
kill @e[type=area_effect_cloud,score_MMrn_min=6,score_MMrn=6]
scoreboard players reset @s MMra
scoreboard players reset @s MMna
scoreboard players set @s MMcl 0
