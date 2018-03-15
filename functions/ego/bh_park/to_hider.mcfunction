function ego:bh_park/clear_player
scoreboard teams join BHPh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1221,y=40,z=-279,dx=-41,dy=-4,dz=89] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_park/tp_to_spawn if @e[type=armor_stand,tag=BHPStand,score_BHPst_min=0,score_BHPst=1]
