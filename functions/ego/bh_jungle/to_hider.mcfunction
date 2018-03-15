function ego:bh_jungle/clear_player
scoreboard teams join BHJh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1103,y=13,z=-100,dx=-5,dy=-3,dz=4] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_jungle/tp_to_spawn if @e[type=armor_stand,tag=BHJStand,score_BHJst_min=0,score_BHJst=1]
