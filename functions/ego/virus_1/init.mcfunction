scoreboard teams join VR1d_y Countdown Minutes Seconds Virus
scoreboard teams join VR1d_g Hiders
scoreboard players operation VR1GameTime VR1op = VR1GameTime VR1Save
scoreboard players operation VR1GameTime VR1op *= 20 constants
scoreboard players operation VR1Countdown VR1op = VR1Countdown VR1Save
scoreboard players operation VR1Countdown VR1op *= 20 constants
summon armor_stand ~ ~ ~ {Tags:["VR1Stand","VR1Entity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=VR1Stand] ~ ~ ~ function ego:virus_1/restart_round
