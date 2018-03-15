function ego:bh_hasdaa/timer
execute @a[x=-1120,y=28,z=-60,dx=73,dy=-4,dz=49,m=2,team=BHHDh] ~ ~ ~ function ego:bh_hasdaa/to_virus
function ego:bh_hasdaa/player_effects
function ego:bh_hasdaa/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHHDStand,score_BHHDchi_min=0,score_BHHDchi=0] BHHDst 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHHDpl_min=1,score_BHHDpl=1] ~ ~ ~ function ego:bh_hasdaa/add_to_round
