clear @s
effect @s clear
execute @s[score_EC_min=0,score_EC=0] ~ ~ ~ function ego:virus_1/get_book
replaceitem entity @s slot.armor.head golden_helmet 1 0 {Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
title @s title {"text":"You are now","color":"yellow"}
title @s subtitle {"text":"the virus!","color":"yellow"}
scoreboard teams join VR1v @s
