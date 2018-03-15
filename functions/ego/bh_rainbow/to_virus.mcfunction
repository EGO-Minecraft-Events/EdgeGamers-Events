function ego:bh_rainbow/clear_player
replaceitem entity @s slot.armor.head golden_helmet 1 0 {Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
title @s title {"text":"You are now","color":"yellow"}
title @s subtitle {"text":"the seeker!","color":"yellow"}
scoreboard teams join BHRAv @s
function ego:bh_rainbow/tp_to_wait if @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=0,score_BHRAst=2]
function ego:bh_rainbow/tp_to_arena if @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=3,score_BHRAst=6]
