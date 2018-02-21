function ego:bh_zelda/timer
execute @a[x=-1130,y=31,z=-218,dx=-83,dy=9,dz=38,m=2,team=BHZh] ~ ~ ~ function ego:bh_zelda/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHZpl_min=1,score_BHZpl=1] ~ ~ ~ function ego:bh_zelda/player_effects
function ego:bh_zelda/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHZStand,score_BHZchi_min=0,score_BHZchi=0] BHZst 4
