function ego:bh_a_small_village/timer
execute @a[x=-1443,y=15,z=-230,dx=7,dy=-4,dz=4,m=2,team=BHASVh] ~ ~ ~ function ego:bh_a_small_village/to_virus
function ego:bh_a_small_village/player_effects
function ego:bh_a_small_village/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHASVStand,score_BHASVchi_min=0,score_BHASVchi=0] BHASVst 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHASVpl_min=1,score_BHASVpl=1] ~ ~ ~ function ego:bh_a_small_village/add_to_round
