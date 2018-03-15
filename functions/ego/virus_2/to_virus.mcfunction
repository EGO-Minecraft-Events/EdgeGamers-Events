function ego:virus_2/clear_player
replaceitem entity @s slot.armor.head golden_helmet 1 0 {Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
title @s title {"text":"You are now","color":"yellow"}
title @s subtitle {"text":"the virus!","color":"yellow"}
scoreboard teams join VR2v @s
function ego:virus_2/tp_to_wait if @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=0,score_VR2st=2]
function ego:virus_2/tp_to_arena if @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=3,score_VR2st=6]
