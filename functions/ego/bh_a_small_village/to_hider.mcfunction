function ego:bh_a_small_village/clear_player
scoreboard teams join BHASVh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1443,y=15,z=-230,dx=7,dy=-4,dz=4] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_a_small_village/tp_to_spawn if @e[type=armor_stand,tag=BHASVStand,score_BHASVst_min=0,score_BHASVst=1]
