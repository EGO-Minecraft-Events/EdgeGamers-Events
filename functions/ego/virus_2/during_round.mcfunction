function ego:virus_2/timer
execute @a[x=-77,y=56,z=-85,dx=31,dy=5,dz=31,m=2,team=VR2h] ~ ~ ~ function ego:virus_2/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_VR2pl_min=1,score_VR2pl=1] ~ ~ ~ function ego:virus_2/player_effects
function ego:virus_2/calc_glowing
scoreboard players set @e[type=armor_stand,tag=VR2Stand,score_VR2chi_min=0,score_VR2chi=0] VR2st 4
