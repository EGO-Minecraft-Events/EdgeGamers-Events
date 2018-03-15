function ego:bh_hospital/clear_player
scoreboard teams join BHHh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1080,y=37,z=-283,dx=12,dy=-12,dz=12] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_hospital/tp_to_spawn if @e[type=armor_stand,tag=BHHStand,score_BHHst_min=0,score_BHHst=1]
