function ego:bh_mastermind/timer
execute @a[x=-1213,y=51,z=-222,dx=71,dy=-6,dz=-71,team=BHMMh] ~ ~ ~ function ego:bh_mastermind/give_disguise
minecraft:tp @a[x=-1213,y=51,z=-222,dx=71,dy=-6,dz=-71,team=BHMMh] -1177 21 -273
execute @a[score_BHMMpl_min=1,score_BHMMpl=1,m=2] ~ ~ ~ function ego:bh_mastermind/player_effects
execute @s[score_BHMMti=0] ~ ~ ~ function ego:bh_mastermind/end_countdown
