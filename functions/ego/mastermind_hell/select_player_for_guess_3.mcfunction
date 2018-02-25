execute @s[score_MMHgn_min=1,score_MMHgn=1] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-18 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @s[score_MMHgn_min=2,score_MMHgn=2] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-16 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @s[score_MMHgn_min=3,score_MMHgn=3] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-14 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @s[score_MMHgn_min=4,score_MMHgn=4] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-12 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @s[score_MMHgn_min=5,score_MMHgn=5] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-10 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @s[score_MMHgn_min=6,score_MMHgn=6] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-8 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @s[score_MMHgn_min=7,score_MMHgn=7] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-6 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @s[score_MMHgn_min=8,score_MMHgn=8] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-4 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @s[score_MMHgn_min=9,score_MMHgn=9] ~ ~ ~ summon area_effect_cloud ~-8 ~2 ~-2 {Tags:["MMHEntity","MMHGuessTP3"],Duration:5}
execute @e[tag=MMHGuessTP3] ~ ~ ~ scoreboard players set @p[r=5,score_MMHrn_min=3,score_MMHrn=3] MMHcl 1
minecraft:tp @a[score_MMHrn_min=3,score_MMHrn=3,score_MMHcl_min=1,score_MMHcl=1] @e[tag=MMHGuessTP3]
minecraft:tp @a[score_MMHrn_min=3,score_MMHrn=3,score_MMHcl_min=1,score_MMHcl=1] ~ ~ ~ ~180 ~
execute @a[score_MMHrn_min=3,score_MMHrn=3,score_MMHcl_min=1,score_MMHcl=1] ~ ~ ~ function ego:mastermind_hell/validate_guess_3
kill @e[tag=MMHGuessTP3]
