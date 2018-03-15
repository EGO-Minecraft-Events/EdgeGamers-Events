function ego:bh_castle_de_emmy/clear_player
scoreboard teams join BHCDEh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1662,y=73,z=-7,dx=1505,dy=-10,dz=-93] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_castle_de_emmy/tp_to_spawn if @e[type=armor_stand,tag=BHCDEStand,score_BHCDEst_min=0,score_BHCDEst=1]
