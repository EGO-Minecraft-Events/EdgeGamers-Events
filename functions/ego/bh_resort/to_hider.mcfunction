function ego:bh_resort/clear_player
scoreboard teams join BHREh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1390,y=101,z=-13,dx=-92,dy=-4,dz=-92] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_resort/tp_to_spawn if @e[type=armor_stand,tag=BHREStand,score_BHREst_min=0,score_BHREst=1]
