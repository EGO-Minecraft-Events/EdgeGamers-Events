function ego:bh_castle_de_emmy/timer
execute @a[x=-1662,y=73,z=-7,dx=1505,dy=-10,dz=-93,team=BHCDEh] ~ ~ ~ function ego:bh_castle_de_emmy/give_disguise
minecraft:tp @a[x=-1662,y=73,z=-7,dx=1505,dy=-10,dz=-93,team=BHCDEh] -1616 4 -59
execute @a[score_BHCDEpl_min=1,score_BHCDEpl=1,m=2] ~ ~ ~ function ego:bh_castle_de_emmy/player_effects
execute @s[score_BHCDEti=0] ~ ~ ~ function ego:bh_castle_de_emmy/end_countdown
