function ego:virus_1/timer
execute @a[x=-85,y=45,z=-241,dx=31,dy=5,dz=31,m=2,team=VR1h] ~ ~ ~ function ego:virus_1/to_virus
function ego:virus_1/player_effects
function ego:virus_1/calc_glowing
scoreboard players set @e[type=armor_stand,tag=VR1Stand,score_VR1chi_min=0,score_VR1chi=0] VR1st 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_VR1pl_min=1,score_VR1pl=1] ~ ~ ~ function ego:virus_1/add_to_round
