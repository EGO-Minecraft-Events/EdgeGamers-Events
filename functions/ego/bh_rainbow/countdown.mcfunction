function ego:bh_rainbow/timer
execute @a[x=-1171,y=38,z=-93,dx=40,dy=-11,dz=83,team=BHRAh] ~ ~ ~ function ego:bh_rainbow/give_disguise
minecraft:tp @a[x=-1171,y=38,z=-93,dx=40,dy=-11,dz=83,team=BHRAh] -1152 7 -80
execute @a[score_BHRApl_min=1,score_BHRApl=1,m=2] ~ ~ ~ function ego:bh_rainbow/player_effects
execute @s[score_BHRAti=0] ~ ~ ~ function ego:bh_rainbow/end_countdown
