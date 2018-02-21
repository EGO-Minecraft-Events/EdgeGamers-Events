clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 1498681551
bd undisguise @p[r=0]
replaceitem entity @s slot.armor.head golden_helmet 1 0 {Unbreakable:1,ench:[{id:10,lvl:1},{id:71,lvl:1}]}
title @s title {"text":"You are now","color":"yellow"}
title @s subtitle {"text":"the seeker!","color":"yellow"}
scoreboard teams join BHCDEv @s
function ego:bh_castle_de_emmy/tp_to_wait if @e[type=armor_stand,tag=BHCDEStand,score_BHCDEst_min=0,score_BHCDEst=2]
function ego:bh_castle_de_emmy/tp_to_arena if @e[type=armor_stand,tag=BHCDEStand,score_BHCDEst_min=3,score_BHCDEst=6]
