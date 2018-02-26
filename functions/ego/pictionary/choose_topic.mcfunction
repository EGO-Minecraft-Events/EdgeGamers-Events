scoreboard players set @r[type=area_effect_cloud,tag=PCTopic,score_PCrd_min=0,score_PCrd=0] PCrd 1
execute @e[type=area_effect_cloud,tag=PCTopic,score_PCrd_min=1,score_PCrd=1] ~ ~ ~ pictionary answer setbyentity @e[r=0]
execute @e[type=area_effect_cloud,tag=PCTopic,score_PCrd_min=1,score_PCrd=1] ~ ~ ~ say set @e[r=0]
