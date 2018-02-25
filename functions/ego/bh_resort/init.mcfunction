function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 1456309508
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1390,y=101,z=-13,dx=-92,dy=-97,dz=-92] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHREprng dummy Pseudo-RNG
scoreboard players set &Increment BHREprng 12345
scoreboard players set &Modulus BHREprng 33
scoreboard players set &Multiplier BHREprng 1103515245
scoreboard players set &Offset BHREprng 0
scoreboard players set &Seed BHREprng 0
scoreboard objectives add BHRE dummy Resort
scoreboard objectives setdisplay sidebar BHRE
scoreboard objectives add BHREpl dummy Resort Player List
scoreboard objectives add BHREsa dummy Resort Select All
scoreboard objectives add BHREti dummy Resort Timer
scoreboard objectives add BHREchi dummy Resort Count Hiders
scoreboard objectives add BHREcvr dummy Resort Count Virus
scoreboard objectives add BHREgl dummy Resort Glowing Players
scoreboard objectives add BHREcalc dummy Resort Calculations
scoreboard objectives add BHREst dummy Resort State
scoreboard teams add BHREh Resort Hiders
scoreboard teams option BHREh color green
scoreboard teams option BHREh deathMessageVisibility never
scoreboard teams option BHREh nametagVisibility hideForOtherTeams
scoreboard teams option BHREh friendlyfire false
scoreboard teams option BHREh collisionRule never
scoreboard teams add BHREv Resort Virus
scoreboard teams option BHREv color yellow
scoreboard teams option BHREv deathMessageVisibility never
scoreboard teams option BHREv friendlyfire false
scoreboard teams option BHREv collisionRule never
scoreboard teams add BHREd_y Resort Display Yellow
scoreboard teams option BHREd_y color yellow
scoreboard teams add BHREd_g Resort Display Green
scoreboard teams option BHREd_g color green
scoreboard teams join BHREd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHREd_g Hiders
scoreboard players set BHRECountdown BHREcalc 1200
scoreboard players set BHREGlowing BHREcalc 6000
scoreboard players set BHREGameTime BHREcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHREStand","BHREEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHREStand] ~ ~ ~ function ego:bh_resort/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Resort","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1456309508"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Resort","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Resort","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1456309508"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1456309508
