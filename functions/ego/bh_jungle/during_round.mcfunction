function ego:bh_jungle/timer
execute @a[x=-1103,y=13,z=-100,dx=-5,dy=-3,dz=4,m=2,team=BHJh] ~ ~ ~ function ego:bh_jungle/to_virus
function ego:bh_jungle/player_effects
function ego:bh_jungle/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHJStand,score_BHJchi_min=0,score_BHJchi=0] BHJst 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHJpl_min=1,score_BHJpl=1] ~ ~ ~ function ego:bh_jungle/add_to_round
