function ego:bh_four_corners/clear_player
replaceitem entity @s slot.armor.head golden_helmet 1 0 {Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
title @s title {"text":"You are now","color":"yellow"}
title @s subtitle {"text":"the seeker!","color":"yellow"}
scoreboard teams join BHFCv @s
function ego:bh_four_corners/tp_to_wait if @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=0,score_BHFCst=2]
function ego:bh_four_corners/tp_to_arena if @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=3,score_BHFCst=6]
