kill @e[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,type=item]
function ego:virus_1/timer
execute @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,m=2,score_VR1pl_min=0] ~ ~ ~ function ego:virus_1/player_effects
function ego:virus_1/calc_glowing
scoreboard players set @e[type=armor_stand,tag=VR1Stand,score_VR1chi_min=0,score_VR1chi=0] VR1st 4
scoreboard players set @a[m=2,score_VR1de_min=1,score_VR1pl_min=1,score_VR1pl=1] VR1pl 0
scoreboard players set @a[score_VR1de_min=1] VR1de 0
