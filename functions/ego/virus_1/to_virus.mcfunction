clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1561350378
replaceitem entity @s slot.armor.head golden_helmet 1 0 {Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
title @s title {"text":"You are now","color":"yellow"}
title @s subtitle {"text":"the virus!","color":"yellow"}
scoreboard teams join VR1v @s
function ego:virus_1/tp_to_wait if @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=0,score_VR1st=2]
function ego:virus_1/tp_to_arena if @e[type=armor_stand,tag=VR1Stand,score_VR1st_min=3,score_VR1st=6]
