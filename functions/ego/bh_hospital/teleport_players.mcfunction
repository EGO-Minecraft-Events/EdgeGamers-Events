say running ego:bh_hospital/teleport_players
execute @s[x=-1080,y=37,z=-283,dx=12,dy=-12,dz=12,team=BHHv] ~ ~ ~ function ego:bh_hospital/tp_to_wait if @e[type=armor_stand,tag=BHHStand,score_BHHst_min=0,score_BHHst=2]
execute @s[x=-1080,y=37,z=-283,dx=12,dy=-12,dz=12,team=BHHv] ~ ~ ~ function ego:bh_hospital/tp_to_arena if @e[type=armor_stand,tag=BHHStand,score_BHHst_min=3,score_BHHst=6]
