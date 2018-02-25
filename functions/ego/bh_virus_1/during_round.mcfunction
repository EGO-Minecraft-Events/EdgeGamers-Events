function ego:bh_virus_1/timer
execute @a[x=-85,y=45,z=-241,dx=31,dy=5,dz=31,m=2,team=BHVR1h] ~ ~ ~ function ego:bh_virus_1/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHVR1pl_min=1,score_BHVR1pl=1] ~ ~ ~ function ego:bh_virus_1/player_effects
function ego:bh_virus_1/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHVR1Stand,score_BHVR1chi_min=0,score_BHVR1chi=0] BHVR1st 4
