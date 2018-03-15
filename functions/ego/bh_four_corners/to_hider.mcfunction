function ego:bh_four_corners/clear_player
scoreboard teams join BHFCh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1358,y=111,z=-190,dx=89,dy=-10,dz=-89] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_four_corners/tp_to_spawn if @e[type=armor_stand,tag=BHFCStand,score_BHFCst_min=0,score_BHFCst=1]
