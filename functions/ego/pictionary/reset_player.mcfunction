clear @s
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1301307747
effect @s clear
effect @s minecraft:instant_health 1 100 true
xp -1000L @s
scoreboard teams join PC @s
scoreboard players set @s PCpl 1
execute @s ~ ~ ~ stats entity @s set AffectedItems @s PCaf
scoreboard players set @s PCaf 0
