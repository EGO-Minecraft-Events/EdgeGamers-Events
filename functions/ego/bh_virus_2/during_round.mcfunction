function ego:bh_virus_2/timer
execute @a[x=-77,y=56,z=-85,dx=31,dy=5,dz=31,m=2,team=BHVR2h] ~ ~ ~ function ego:bh_virus_2/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHVR2pl_min=1,score_BHVR2pl=1] ~ ~ ~ function ego:bh_virus_2/player_effects
function ego:bh_virus_2/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHVR2Stand,score_BHVR2chi_min=0,score_BHVR2chi=0] BHVR2st 4
