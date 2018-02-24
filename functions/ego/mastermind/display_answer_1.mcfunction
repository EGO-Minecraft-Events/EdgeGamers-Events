scoreboard players operation @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess0] MMca = @e[score_MMrn_min=1,score_MMrn=1,tag=MMCorrect0] MMca
scoreboard players operation @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess1] MMca = @e[score_MMrn_min=1,score_MMrn=1,tag=MMCorrect1] MMca
scoreboard players operation @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess2] MMca = @e[score_MMrn_min=1,score_MMrn=1,tag=MMCorrect2] MMca
scoreboard players operation @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess3] MMca = @e[score_MMrn_min=1,score_MMrn=1,tag=MMCorrect3] MMca
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=1,score_MMca=1] ~ ~ ~ execute @e[score_MMrn_min=1,score_MMrn=1,r=1,rm=3,score_MMbi_min=1,score_MMbi=1] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=1,score_MMca=1,score_MMbi_min=1,score_MMbi=1] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=2,score_MMca=2] ~ ~ ~ execute @e[score_MMrn_min=1,score_MMrn=1,r=1,rm=3,score_MMbi_min=2,score_MMbi=2] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=2,score_MMca=2,score_MMbi_min=2,score_MMbi=2] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=3,score_MMca=3] ~ ~ ~ execute @e[score_MMrn_min=1,score_MMrn=1,r=1,rm=3,score_MMbi_min=3,score_MMbi=3] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=3,score_MMca=3,score_MMbi_min=3,score_MMbi=3] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=4,score_MMca=4] ~ ~ ~ execute @e[score_MMrn_min=1,score_MMrn=1,r=1,rm=3,score_MMbi_min=4,score_MMbi=4] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=4,score_MMca=4,score_MMbi_min=4,score_MMbi=4] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=5,score_MMca=5] ~ ~ ~ execute @e[score_MMrn_min=1,score_MMrn=1,r=1,rm=3,score_MMbi_min=5,score_MMbi=5] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=5,score_MMca=5,score_MMbi_min=5,score_MMbi=5] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=6,score_MMca=6] ~ ~ ~ execute @e[score_MMrn_min=1,score_MMrn=1,r=1,rm=3,score_MMbi_min=6,score_MMbi=6] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite] MMcl 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMGuess,score_MMca_min=6,score_MMca=6,score_MMbi_min=6,score_MMbi=6] ~ ~ ~ scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed] MMcl 1
scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed] MMcl 0
scoreboard players add @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite] MMcl 0
setblock ~-7 ~ ~ standing_sign 10 replace {Text1:"{\"text\":\"-=-\"}",Text2:"{\"text\":\"\",\"extra\":[{\"score\":{\"name\":\"@e[type=area_effect_cloud,tag=MMRed]\",\"objective\":\"MMcl\"}},{\"text\":\" red\"}]}",Text3:"{\"text\":\"\",\"extra\":[{\"score\":{\"name\":\"@e[type=area_effect_cloud,tag=MMWhite]\",\"objective\":\"MMcl\"}},{\"text\:\" white\"}]}",Text4:"{\"text\":\"-=-\"}"}
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed,score_MMcl_min=4,score_MMcl=4] ~ ~ ~ setblock ~-7 ~ ~ standing_sign 10 replace {Text1:"{\"text\":\"--=--\"}",Text2:"{"text":"4 red","bold":"true"}",Text3:"{"text":"Shhhh","bold":"true"}",Text4:"{\"text\":\"--=--\"}"}
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite,score_MMcl_min=0,score_MMcl=0] ~ ~ ~ execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed,score_MMcl_min=1,score_MMcl=3] ~ ~ ~ setblock ~-7 ~ ~ standing_sign 10 replace {Text1:"{\"text\":\"-=-\"}",Text2:"{\"text\":\"\",\"extra\":[{\"score\":{\"name\":\"@e[type=area_effect_cloud,tag=MMRed]\",\"objective\":\"MMcl\"}},{\"text\":\" red\"}]}",Text3:"{\"text\":\"-=-\"}",Text4:"{\"text\":\"\"}"}
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMWhite,score_MMcl_min=1,score_MMcl=4] ~ ~ ~ execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed,score_MMcl_min=0,score_MMcl=0] ~ ~ ~ setblock ~-7 ~ ~ standing_sign 10 replace {Text1:"{\"text\":\"-=-\"}",Text2:"{\"text\":\"\",\"extra\":[{\"score\":{\"name\":\"@e[type=area_effect_cloud,tag=MMWhite]\",\"objective\":\"MMcl\"}},{\"text\":\" white\"}]}",Text3:"{\"text\":\"-=-\"}",Text4:"{\"text\":\"\"}"}
setblock ~ ~ ~ tripwire 0 replace stone_button
scoreboard players set @e[type=armor_stand,tag=MMRoom1,score_MMca_min=0,score_MMca=0,score_MMcl_min=1,score_MMcl=1] MMcl 2
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed,score_MMcl_min=4,score_MMcl=4] ~ ~ ~ scoreboard players set @e[type=armor_stand,tag=MMRoom1,score_MMca_min=0,score_MMca=0] MMca 1
execute @e[score_MMrn_min=1,score_MMrn=1,tag=MMRed,score_MMcl_min=4,score_MMcl=4] ~ ~ ~ fill ~ ~4 ~ ~ ~6 ~ sea_lantern 0 replace redstone_lamp
execute @s ~ ~ ~ clone ~-2 ~-1 ~ ~-5 ~-1 ~ ~-5 ~-3 ~
execute @s ~ ~ ~ setblock ~ ~5 ~ redstone_block 0
