scoreboard players add @s QR 0
scoreboard players tag @s[x=226,y=6,z=-158,dx=14,dy=6,dz=2,tag=!QRLap] add QRLap
scoreboard players tag @s[x=241,y=8,z=-142,dy=3,dz=2,tag=QRLap] remove QRLap
execute @s[x=232,y=7,z=-163,dx=8,dy=5,dz=2,tag=!QRLap] ~ ~ ~ function ego:quartz_race/add_lap
