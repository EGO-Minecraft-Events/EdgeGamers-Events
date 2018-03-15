function ego:bh_hasdaa/clear_player
scoreboard teams join BHHDh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1120,y=28,z=-60,dx=73,dy=-4,dz=49] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_hasdaa/tp_to_spawn if @e[type=armor_stand,tag=BHHDStand,score_BHHDst_min=0,score_BHHDst=1]
