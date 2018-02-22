scoreboard players add @s DR 0
scoreboard players tag @s[x=214,y=16,z=-38,dx=16,dy=5,dz=3,tag=!DRLap] add DRLap
scoreboard players tag @s[x=249,y=4,z=-28,dx=1,dy=15,dz=6,tag=DRLap] remove DRLap
execute @s[x=224,y=18,z=-42,dx=6,dy=10,dz=1,tag=!DRLap] ~ ~ ~ function ego:diamond_race/add_lap
