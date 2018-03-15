function ego:bh_four_corners/timer
execute @a[x=-1358,y=111,z=-190,dx=89,dy=-10,dz=-89,m=2,team=BHFCh] ~ ~ ~ function ego:bh_four_corners/to_virus
function ego:bh_four_corners/player_effects
function ego:bh_four_corners/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHFCStand,score_BHFCchi_min=0,score_BHFCchi=0] BHFCst 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHFCpl_min=1,score_BHFCpl=1] ~ ~ ~ function ego:bh_four_corners/add_to_round
