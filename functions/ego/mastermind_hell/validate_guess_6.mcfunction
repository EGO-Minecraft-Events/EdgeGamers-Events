summon area_effect_cloud ~-1 ~ ~ {Tags:["MMHEntity","MMHGuess","MMHGuess1"],Duration:5}
summon area_effect_cloud ~-2 ~ ~ {Tags:["MMHEntity","MMHGuess","MMHGuess2"],Duration:5}
summon area_effect_cloud ~-3 ~ ~ {Tags:["MMHEntity","MMHGuess","MMHGuess3"],Duration:5}
summon area_effect_cloud ~-4 ~ ~ {Tags:["MMHEntity","MMHGuess","MMHGuess4"],Duration:5}
summon area_effect_cloud ~-5 ~ ~ {Tags:["MMHEntity","MMHGuess","MMHGuess5"],Duration:5}
summon area_effect_cloud ~-6 ~ ~ {Tags:["MMHEntity","MMHGuess","MMHGuess6"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHRepeat","MMHRepeat1"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHRepeat","MMHRepeat2"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHRepeat","MMHRepeat3"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHRepeat","MMHRepeat4"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHRepeat","MMHRepeat5"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHRepeat","MMHRepeat6"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHRepeat","MMHRepeat7"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHRepeat","MMHRepeat8"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHDisplay","MMHWhite"],Duration:5}
summon area_effect_cloud ~ ~ ~ {Tags:["MMHEntity","MMHDisplay","MMHRed"],Duration:5}
scoreboard players set @e[x=199,y=4,z=49,dx=9,dy=6,dz=20,type=area_effect_cloud] MMHrn 6
scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] MMHbi 0
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] ~ ~ ~ detect ~ ~-1 ~ coal_block 0 scoreboard players set @s MMHbi 1
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] ~ ~ ~ detect ~ ~-1 ~ redstone_block 0 scoreboard players set @s MMHbi 2
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] ~ ~ ~ detect ~ ~-1 ~ lapis_block 0 scoreboard players set @s MMHbi 3
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] ~ ~ ~ detect ~ ~-1 ~ emerald_block 0 scoreboard players set @s MMHbi 4
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] ~ ~ ~ detect ~ ~-1 ~ iron_block 0 scoreboard players set @s MMHbi 5
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] ~ ~ ~ detect ~ ~-1 ~ gold_block 0 scoreboard players set @s MMHbi 6
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] ~ ~ ~ detect ~ ~-1 ~ diamond_block 0 scoreboard players set @s MMHbi 7
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess] ~ ~ ~ detect ~ ~-1 ~ quartz_block 0 scoreboard players set @s MMHbi 8
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess,score_MMHbi_min=1,score_MMHbi=1] ~ ~ ~ scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat1] MMHcl 1
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess,score_MMHbi_min=2,score_MMHbi=2] ~ ~ ~ scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat2] MMHcl 1
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess,score_MMHbi_min=3,score_MMHbi=3] ~ ~ ~ scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat3] MMHcl 1
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess,score_MMHbi_min=4,score_MMHbi=4] ~ ~ ~ scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat4] MMHcl 1
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess,score_MMHbi_min=5,score_MMHbi=5] ~ ~ ~ scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat5] MMHcl 1
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess,score_MMHbi_min=6,score_MMHbi=6] ~ ~ ~ scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat6] MMHcl 1
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess,score_MMHbi_min=7,score_MMHbi=7] ~ ~ ~ scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat7] MMHcl 1
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHGuess,score_MMHbi_min=8,score_MMHbi=8] ~ ~ ~ scoreboard players add @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat8] MMHcl 1
scoreboard players add @s MMHra 0
execute @e[score_MMHrn_min=6,score_MMHrn=6,tag=MMHRepeat,score_MMHcl_min=2] ~ ~ ~ scoreboard players set @a[score_MMHrn_min=6,score_MMHrn=6,score_MMHcl_min=1,score_MMHcl=1] MMHra 1
scoreboard players add @s MMHna 0
execute @e[tag=MMHGuess,score_MMHbi_min=0,score_MMHbi=0] ~ ~ ~ scoreboard players set @a[score_MMHrn_min=6,score_MMHrn=6,score_MMHcl_min=1,score_MMHcl=1] MMHna 1
execute @s[score_MMHra_min=1,score_MMHra=1] ~ ~ ~ tellraw @a[score_MMHrn_min=6,score_MMHrn=6] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MMH","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind Hell","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 525124045"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"There are repeated colors. Please redo your guess.","color":"gold"}]}
execute @s[score_MMHna_min=1,score_MMHna=1] ~ ~ ~ tellraw @a[score_MMHrn_min=6,score_MMHrn=6] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"MMH","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind Hell","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 525124045"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Warning: ","color":"red","bold":"true"},{"text":"There is at least one missing block. Please redo your guess.","color":"gold"}]}
execute @s[score_MMHra_min=0,score_MMHra=0,score_MMHna_min=0,score_MMHna=0] ~ ~ ~ function ego:mastermind_hell/display_guess_6
kill @e[type=area_effect_cloud,score_MMHrn_min=6,score_MMHrn=6]
scoreboard players reset @s MMHra
scoreboard players reset @s MMHna
scoreboard players set @s MMHcl 0
