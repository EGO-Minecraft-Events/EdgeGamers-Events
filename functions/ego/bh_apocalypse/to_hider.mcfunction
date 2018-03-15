function ego:bh_apocalypse/clear_player
scoreboard teams join BHAh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1565,y=47,z=-102,dx=74,dy=-3,dz=94] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_apocalypse/tp_to_spawn if @e[type=armor_stand,tag=BHAStand,score_BHAst_min=0,score_BHAst=1]
