execute @e[type=armor_stand,tag=FlooStand] ~ ~ ~ function ego:floo_network/run_event unless @s[score_FLgam_min=0,score_FLgam=0]
execute @a[score_FLid_min=1] ~ ~ ~ function ego:floo_network/spawnpoint
execute @a[score_FLtp_min=1] ~ ~ ~ function ego:floo_network/teleport
execute @a[x=397,y=17,z=61,r=5] ~ ~ ~ function ego:floo_network/in_spawn_tree
execute @a[x=350,y=14,z=13,dx=90,dy=30,dz=90] ~ ~ ~ function ego:floo_network/in_spawn
execute @a ~ ~ ~ function ego:floo_network/calc_dimension
execute @e[type=armor_stand,tag=FlooStand] ~ ~ ~ function ego:floo_network/calc_rank
execute @a[score_FLrac_min=1,score_FLrac=1] ~ ~ ~ function ego:floo_network/use_rank
execute @e[type=armor_stand,tag=FlooStand] ~ ~ ~ function ego:floo_network/use_options
scoreboard players enable * FLvot
execute @a[score_FLvot_min=1] ~ ~ ~ function ego:floo_network/vote
execute @a[score_FLvot=-1] ~ ~ ~ function ego:floo_network/vote
function ego:floo_network/reset_global_scores
