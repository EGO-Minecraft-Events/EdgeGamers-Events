summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMHRandom","MMHRandom1"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMHRandom","MMHRandom2"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMHRandom","MMHRandom3"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMHRandom","MMHRandom4"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMHRandom","MMHRandom5"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMHRandom","MMHRandom6"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMHRandom","MMHRandom7"]}
summon area_effect_cloud ~ ~ ~ {Duration:5,Tags:["MMHRandom","MMHRandom8"]}
scoreboard players set @e[type=area_effect_cloud,tag=MMHRandom1] MMHca 1
scoreboard players set @e[type=area_effect_cloud,tag=MMHRandom2] MMHca 2
scoreboard players set @e[type=area_effect_cloud,tag=MMHRandom3] MMHca 3
scoreboard players set @e[type=area_effect_cloud,tag=MMHRandom4] MMHca 4
scoreboard players set @e[type=area_effect_cloud,tag=MMHRandom5] MMHca 5
scoreboard players set @e[type=area_effect_cloud,tag=MMHRandom6] MMHca 6
scoreboard players set @e[type=area_effect_cloud,tag=MMHRandom7] MMHca 7
scoreboard players set @e[type=area_effect_cloud,tag=MMHRandom8] MMHca 8
scoreboard players add @r[type=area_effect_cloud,tag=MMHRandom] MMHcl 0
scoreboard players operation @e[score_MMHrn_min=1,score_MMHrn=1,type=armor_stand,tag=MMHCorrect1] MMHca = @e[type=area_effect_cloud,tag=MMHRandom,score_MMHcl_min=0,score_MMHcl=0] MMHca
kill @e[type=area_effect_cloud,score_MMHcl_min=0,score_MMHcl=0]
scoreboard players add @r[type=area_effect_cloud,tag=MMHRandom] MMHcl 0
scoreboard players operation @e[score_MMHrn_min=1,score_MMHrn=1,type=armor_stand,tag=MMHCorrect2] MMHca = @e[type=area_effect_cloud,tag=MMHRandom,score_MMHcl_min=0,score_MMHcl=0] MMHca
kill @e[type=area_effect_cloud,score_MMHcl_min=0,score_MMHcl=0]
scoreboard players add @r[type=area_effect_cloud,tag=MMHRandom] MMHcl 0
scoreboard players operation @e[score_MMHrn_min=1,score_MMHrn=1,type=armor_stand,tag=MMHCorrect3] MMHca = @e[type=area_effect_cloud,tag=MMHRandom,score_MMHcl_min=0,score_MMHcl=0] MMHca
kill @e[type=area_effect_cloud,score_MMHcl_min=0,score_MMHcl=0]
scoreboard players add @r[type=area_effect_cloud,tag=MMHRandom] MMHcl 0
scoreboard players operation @e[score_MMHrn_min=1,score_MMHrn=1,type=armor_stand,tag=MMHCorrect4] MMHca = @e[type=area_effect_cloud,tag=MMHRandom,score_MMHcl_min=0,score_MMHcl=0] MMHca
kill @e[type=area_effect_cloud,score_MMHcl_min=0,score_MMHcl=0]
scoreboard players add @r[type=area_effect_cloud,tag=MMHRandom] MMHcl 0
scoreboard players operation @e[score_MMHrn_min=1,score_MMHrn=1,type=armor_stand,tag=MMHCorrect5] MMHca = @e[type=area_effect_cloud,tag=MMHRandom,score_MMHcl_min=0,score_MMHcl=0] MMHca
kill @e[type=area_effect_cloud,score_MMHcl_min=0,score_MMHcl=0]
scoreboard players add @r[type=area_effect_cloud,tag=MMHRandom] MMHcl 0
scoreboard players operation @e[score_MMHrn_min=1,score_MMHrn=1,type=armor_stand,tag=MMHCorrect6] MMHca = @e[type=area_effect_cloud,tag=MMHRandom,score_MMHcl_min=0,score_MMHcl=0] MMHca
kill @e[type=area_effect_cloud,tag=MMHRandom]
