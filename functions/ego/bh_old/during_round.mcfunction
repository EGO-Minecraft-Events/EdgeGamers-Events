function ego:bh_old/timer
execute @a[x=-1193,y=45,z=-175,dx=71,dy=-5,dz=71,m=2,team=BHOh] ~ ~ ~ function ego:bh_old/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHOpl_min=1,score_BHOpl=1] ~ ~ ~ function ego:bh_old/player_effects
function ego:bh_old/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHOStand,score_BHOchi_min=0,score_BHOchi=0] BHOst 4
