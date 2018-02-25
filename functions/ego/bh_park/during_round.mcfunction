function ego:bh_park/timer
execute @a[x=-1221,y=40,z=-279,dx=-41,dy=-4,dz=89,m=2,team=BHPh] ~ ~ ~ function ego:bh_park/assign_teams
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHPpl_min=1,score_BHPpl=1] ~ ~ ~ function ego:bh_park/player_effects
function ego:bh_park/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHPStand,score_BHPchi_min=0,score_BHPchi=0] BHPst 4
