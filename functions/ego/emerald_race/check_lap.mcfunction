scoreboard players add @s ER 0
scoreboard players tag @s[x=255,y=17,z=-97,dx=25,dy=10,dz=2,tag=!ERLap] add ERLap
scoreboard players tag @s[x=220,y=8,z=-104,dx=1,dy=12,dz=8,tag=ERLap] remove ERLap
execute @s[x=255,y=17,z=-94,dx=14,dy=10,dz=1,tag=!ERLap] ~ ~ ~ function ego:emerald_race/add_lap
