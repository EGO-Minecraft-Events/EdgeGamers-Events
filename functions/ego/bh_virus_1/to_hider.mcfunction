function ego:bh_virus_1/clear_player
scoreboard teams join BHVR1h @s
scoreboard players set @s gTEMP 0
scoreboard players set @s[x=-85,y=45,z=-241,dx=31,dy=5,dz=31] gTEMP 1
execute @s[score_gTEMP_min=0,score_gTEMP=0] ~ ~ ~ function ego:bh_virus_1/tp_to_spawn if @e[type=armor_stand,tag=BHVR1Stand,score_BHVR1st_min=0,score_BHVR1st=1]
