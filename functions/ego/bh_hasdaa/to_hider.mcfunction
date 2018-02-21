scoreboard players operation &Seed BHHDprng *= &Multiplier BHHDprng
scoreboard players operation &Seed BHHDprng += &Increment BHHDprng
scoreboard players operation @s BHHDprng = &Seed BHHDprng
scoreboard players operation @s BHHDprng %= &Modulus BHHDprng
scoreboard players operation @s[score_BHHDprng=-1] BHHDprng *= -1 constants
scoreboard players operation @s BHHDprng += &Offset BHHDprng
clear @s
effect @s clear
scoreboard players set @s[score_EC_min=0,score_EC=0] FLbk 882469132
scoreboard teams join BHHDh @s
function ego:bh_hasdaa/tp_to_spawn if @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=0,score_BHHDst=2]
