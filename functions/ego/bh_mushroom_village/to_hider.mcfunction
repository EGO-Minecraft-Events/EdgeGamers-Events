function ego:bh_mushroom_village/clear_player
scoreboard teams join BHMVh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-117,y=48,z=-225,dx=-929,dy=-5,dz=72] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_mushroom_village/tp_to_spawn if @e[type=armor_stand,tag=BHMVStand,score_BHMVst_min=0,score_BHMVst=1]
