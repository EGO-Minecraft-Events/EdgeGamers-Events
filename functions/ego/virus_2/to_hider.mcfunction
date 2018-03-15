function ego:virus_2/clear_player
scoreboard teams join VR2h @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-77,y=56,z=-85,dx=31,dy=5,dz=31] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:virus_2/tp_to_spawn if @e[type=armor_stand,tag=VR2Stand,score_VR2st_min=0,score_VR2st=1]
