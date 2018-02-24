execute @s[score_MMgn_min=1,score_MMgn=1] ~ ~ ~ summon area_effect_cloud ~7 ~2 ~9 {Tags:["MMEntity","MMGuessTP8"],Duration:5}
execute @s[score_MMgn_min=2,score_MMgn=2] ~ ~ ~ summon area_effect_cloud ~7 ~2 ~8 {Tags:["MMEntity","MMGuessTP8"],Duration:5}
execute @s[score_MMgn_min=3,score_MMgn=3] ~ ~ ~ summon area_effect_cloud ~7 ~2 ~7 {Tags:["MMEntity","MMGuessTP8"],Duration:5}
execute @s[score_MMgn_min=4,score_MMgn=4] ~ ~ ~ summon area_effect_cloud ~7 ~2 ~6 {Tags:["MMEntity","MMGuessTP8"],Duration:5}
execute @s[score_MMgn_min=5,score_MMgn=5] ~ ~ ~ summon area_effect_cloud ~7 ~2 ~5 {Tags:["MMEntity","MMGuessTP8"],Duration:5}
execute @e[tag=MMGuessTP8] ~ ~ ~ execute @p[r=5,score_MMrn_min=8,score_MMrn=8] ~ ~ ~ function ego:mastermind/validate_guess_8
kill @e[tag=MMGuessTP8]
