clear @s
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 586508005
execute @s[score_TPpl_min=0,score_TPpl=0] ~ ~ ~ function ego:the_pit_3/give_items_in_lobby
execute @s[score_TPpl_min=2,score_TPpl=2] ~ ~ ~ function ego:the_pit_3/give_items_in_lobby
effect @s clear
effect @s minecraft:instant_health 1 100 true
xp -1000L @s
scoreboard teams join TP @s
scoreboard players set @s TPpl 1
