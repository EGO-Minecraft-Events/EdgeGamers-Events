execute @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181,m=2,score_VR1pl_min=0,score_VR1pl=0] ~ ~ ~ function ego:virus_1/reset_player
scoreboard objectives remove VR1
scoreboard objectives remove VR1pl
scoreboard objectives remove VR1de
scoreboard objectives remove VR1ti
scoreboard objectives remove VR1chi
scoreboard objectives remove VR1cvr
scoreboard objectives remove VR1gl
scoreboard objectives remove VR1calc
scoreboard objectives remove VR1st
scoreboard teams remove VR1h
scoreboard teams remove VR1v
scoreboard teams remove VR1d_y
scoreboard teams remove VR1d_g
kill @e[type=armor_stand,tag=VR1Entity]
