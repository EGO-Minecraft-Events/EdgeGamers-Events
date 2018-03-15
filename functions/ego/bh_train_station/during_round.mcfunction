function ego:bh_train_station/timer
execute @a[x=-1208,y=34,z=-186,dx=-175,dy=-3,dz=175,m=2,team=BHTSh] ~ ~ ~ function ego:bh_train_station/to_virus
function ego:bh_train_station/player_effects
function ego:bh_train_station/calc_glowing
scoreboard players set @e[type=armor_stand,tag=BHTSStand,score_BHTSchi_min=0,score_BHTSchi=0] BHTSst 4
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_BHTSpl_min=1,score_BHTSpl=1] ~ ~ ~ function ego:bh_train_station/add_to_round
