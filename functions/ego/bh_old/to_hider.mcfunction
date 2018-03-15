function ego:bh_old/clear_player
scoreboard teams join BHOh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1193,y=45,z=-175,dx=71,dy=-5,dz=71] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_old/tp_to_spawn if @e[type=armor_stand,tag=BHOStand,score_BHOst_min=0,score_BHOst=1]
