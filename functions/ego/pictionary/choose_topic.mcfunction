scoreboard players set @r[type=area_effect_cloud,tag=PCTopic,score_PCrd_min=0,score_PCrd=0] PCrd 1
minecraft:tp @e[type=area_effect_cloud,tag=PCTopic,score_PCpl_min=1,score_PCpl=1] ~ ~0.1 ~
execute @e[type=area_effect_cloud,tag=PCTopic,score_PCpl_min=1,score_PCpl=1] ~ ~ ~ pictionary set entity @e[r=0]
minecraft:tp @e[type=area_effect_cloud,tag=PCTopic,score_PCpl_min=1,score_PCpl=1] ~ ~-0.1 ~
