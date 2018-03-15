function ego:bh_mushroom_village/timer
execute @a[x=-117,y=48,z=-225,dx=-929,dy=-5,dz=72,m=2,team=BHMVh] ~ ~ ~ function ego:bh_mushroom_village/to_virus
function ego:bh_mushroom_village/player_effects
function ego:bh_mushroom_village/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHMVStand,score_BHMVchi_min=0,score_BHMVchi=0] BHMVst 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMVpl_min=1,score_BHMVpl=1] ~ ~ ~ function ego:bh_mushroom_village/add_to_round
