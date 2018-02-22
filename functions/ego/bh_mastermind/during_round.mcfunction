function ego:bh_mastermind/timer
execute @a[x=-1213,y=51,z=-222,dx=71,dy=-6,dz=-71,m=2,team=BHMMh] ~ ~ ~ function ego:bh_mastermind/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHMMpl_min=1,score_BHMMpl=1] ~ ~ ~ function ego:bh_mastermind/player_effects
function ego:bh_mastermind/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHMMStand,score_BHMMchi_min=0,score_BHMMchi=0] BHMMst 4
