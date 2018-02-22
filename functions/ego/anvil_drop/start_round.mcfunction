scoreboard players set @s ADti 120
scoreboard players set @s ADst 2
execute @a[x=-33,y=3,z=81,dx=12,dy=10,dz=12,m=2,score_ADpl_min=1,score_ADpl=1] ~ ~ ~ function ego:anvil_drop/add_to_round
function ego:anvil_drop/close_doors
