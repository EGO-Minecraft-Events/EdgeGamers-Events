function ego:bh_resort/timer
execute @a[x=-1390,y=101,z=-13,dx=-92,dy=-4,dz=-92,m=2,team=BHREh] ~ ~ ~ function ego:bh_resort/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHREpl_min=1,score_BHREpl=1] ~ ~ ~ function ego:bh_resort/player_effects
function ego:bh_resort/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHREStand,score_BHREchi_min=0,score_BHREchi=0] BHREst 4
