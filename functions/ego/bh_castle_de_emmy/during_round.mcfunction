function ego:bh_castle_de_emmy/timer
execute @a[x=-1662,y=73,z=-7,dx=1505,dy=-10,dz=-93,m=2,team=BHCDEh] ~ ~ ~ function ego:bh_castle_de_emmy/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHCDEpl_min=1,score_BHCDEpl=1] ~ ~ ~ function ego:bh_castle_de_emmy/player_effects
function ego:bh_castle_de_emmy/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHCDEStand,score_BHCDEchi_min=0,score_BHCDEchi=0] BHCDEst 4
