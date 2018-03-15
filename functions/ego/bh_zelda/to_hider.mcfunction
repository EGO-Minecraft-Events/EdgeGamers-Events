function ego:bh_zelda/clear_player
scoreboard teams join BHZh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1130,y=31,z=-218,dx=-83,dy=9,dz=38] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_zelda/tp_to_spawn if @e[type=armor_stand,tag=BHZStand,score_BHZst_min=0,score_BHZst=1]
