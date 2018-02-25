function ego:bh_hospital/timer
execute @a[x=-1080,y=37,z=-283,dx=12,dy=-12,dz=12,m=2,team=BHHh] ~ ~ ~ function ego:bh_hospital/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHpl_min=1,score_BHHpl=1] ~ ~ ~ function ego:bh_hospital/player_effects
function ego:bh_hospital/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHHStand,score_BHHchi_min=0,score_BHHchi=0] BHHst 4
