clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1456309508
bd undisguise @p[r=0]
replaceitem entity @s slot.armor.head golden_helmet 1 0 {Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
title @s title {"text":"You are now","color":"yellow"}
title @s subtitle {"text":"the seeker!","color":"yellow"}
scoreboard teams join BHREv @s
function ego:bh_resort/tp_to_wait if @e[type=armor_stand,tag=BHREStand,score_BHREst_min=0,score_BHREst=2]
function ego:bh_resort/tp_to_arena if @e[type=armor_stand,tag=BHREStand,score_BHREst_min=3,score_BHREst=6]
