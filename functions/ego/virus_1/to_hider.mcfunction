clear @s
effect @s clear
execute @s[score_EC_min=0,score_EC=0] ~ ~ ~ function ego:virus_1/get_book
scoreboard teams join VR1h @s
function ego:virus_1/tp_to_wait if @s[x=-70,y=53,z=-226,dx=1,dy=3,dz=1]
