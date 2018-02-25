clear @s
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 525124045
scoreboard players set @s MMHec -100
scoreboard teams join NoPVP @s[team=!NoPVP]
scoreboard teams join MMHwhite @s[score_HOST_min=0,score_HOST=0,team=!MMHwhite]
effect @s clear
effect @s minecraft:instant_health 1 100 true
xp -1000L @s
scoreboard teams join MMH @s
scoreboard players set @s MMHpl 1
