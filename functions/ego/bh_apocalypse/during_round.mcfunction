function ego:bh_apocalypse/timer
execute @a[x=-1565,y=47,z=-102,dx=74,dy=-3,dz=94,m=2,team=BHAh] ~ ~ ~ function ego:bh_apocalypse/to_virus
function ego:bh_apocalypse/player_effects
function ego:bh_apocalypse/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHAStand,score_BHAchi_min=0,score_BHAchi=0] BHAst 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHApl_min=1,score_BHApl=1] ~ ~ ~ function ego:bh_apocalypse/add_to_round
