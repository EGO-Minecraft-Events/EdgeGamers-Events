function ego:bh_rainbow/timer
execute @a[x=-1171,y=38,z=-93,dx=40,dy=-11,dz=83,m=2,team=BHRAh] ~ ~ ~ function ego:bh_rainbow/to_virus
function ego:bh_rainbow/player_effects
function ego:bh_rainbow/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHRAStand,score_BHRAchi_min=0,score_BHRAchi=0] BHRAst 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHRApl_min=1,score_BHRApl=1] ~ ~ ~ function ego:bh_rainbow/add_to_round
