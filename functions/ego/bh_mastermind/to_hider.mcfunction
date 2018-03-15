function ego:bh_mastermind/clear_player
scoreboard teams join BHMMh @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-1213,y=51,z=-222,dx=71,dy=-6,dz=-71] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_mastermind/tp_to_spawn if @e[type=armor_stand,tag=BHMMStand,score_BHMMst_min=0,score_BHMMst=1]
