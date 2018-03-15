function ego:bh_rainbow/clear_player
scoreboard teams join BHRAh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1171,y=38,z=-93,dx=40,dy=-11,dz=83] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_rainbow/tp_to_spawn if @e[type=armor_stand,tag=BHRAStand,score_BHRAst_min=0,score_BHRAst=1]
