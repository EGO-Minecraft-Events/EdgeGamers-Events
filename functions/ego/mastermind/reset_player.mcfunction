clear @s
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1217546713
scoreboard players set @s MMec -100
scoreboard teams join NoPVP @s[team=!NoPVP]
scoreboard teams join MMwhite @s[score_HOST_min=0,score_HOST=0,team=!MMwhite]
effect @s clear
effect @s minecraft:instant_health 1 100 true
xp -1000L @s
scoreboard teams join MM @s
scoreboard players set @s MMpl 1
