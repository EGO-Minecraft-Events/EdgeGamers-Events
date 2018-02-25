summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMRandom","MMRandom1"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMRandom","MMRandom2"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMRandom","MMRandom3"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMRandom","MMRandom4"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMRandom","MMRandom5"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMRandom","MMRandom6"]}
scoreboard players set @e[type=area_effect_cloud,tag=MMRandom1] MMca 1
scoreboard players set @e[type=area_effect_cloud,tag=MMRandom2] MMca 2
scoreboard players set @e[type=area_effect_cloud,tag=MMRandom3] MMca 3
scoreboard players set @e[type=area_effect_cloud,tag=MMRandom4] MMca 4
scoreboard players set @e[type=area_effect_cloud,tag=MMRandom5] MMca 5
scoreboard players set @e[type=area_effect_cloud,tag=MMRandom6] MMca 6
scoreboard players add @r[type=area_effect_cloud,tag=MMRandom] MMcl 0
scoreboard players operation @e[score_MMrn_min=10,score_MMrn=10,type=armor_stand,tag=MMCorrect1] MMca = @e[type=area_effect_cloud,tag=MMRandom,score_MMcl_min=0,score_MMcl=0] MMca
kill @e[type=area_effect_cloud,score_MMcl_min=0,score_MMcl=0]
scoreboard players add @r[type=area_effect_cloud,tag=MMRandom] MMcl 0
scoreboard players operation @e[score_MMrn_min=10,score_MMrn=10,type=armor_stand,tag=MMCorrect2] MMca = @e[type=area_effect_cloud,tag=MMRandom,score_MMcl_min=0,score_MMcl=0] MMca
kill @e[type=area_effect_cloud,score_MMcl_min=0,score_MMcl=0]
scoreboard players add @r[type=area_effect_cloud,tag=MMRandom] MMcl 0
scoreboard players operation @e[score_MMrn_min=10,score_MMrn=10,type=armor_stand,tag=MMCorrect3] MMca = @e[type=area_effect_cloud,tag=MMRandom,score_MMcl_min=0,score_MMcl=0] MMca
kill @e[type=area_effect_cloud,score_MMcl_min=0,score_MMcl=0]
scoreboard players add @r[type=area_effect_cloud,tag=MMRandom] MMcl 0
scoreboard players operation @e[score_MMrn_min=10,score_MMrn=10,type=armor_stand,tag=MMCorrect4] MMca = @e[type=area_effect_cloud,tag=MMRandom,score_MMcl_min=0,score_MMcl=0] MMca
kill @e[type=area_effect_cloud,tag=MMRandom]
