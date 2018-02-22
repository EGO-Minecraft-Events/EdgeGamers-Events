scoreboard players reset Players AD
scoreboard players reset Time_Elapsed AD
execute @a[score_gSA_min=1,score_gSA=1,score_ADpl_min=1,score_ADpl=1] ~ ~ ~ function ego:anvil_drop/announce_player
execute @a[score_gSA_min=1,score_gSA=1] ~ ~ ~ function ego:anvil_drop/reset_player
kill @e[x=-38,y=0,z=76,dx=22,dy=35,dz=22,type=falling_block]
scoreboard players set @s ADst 0
