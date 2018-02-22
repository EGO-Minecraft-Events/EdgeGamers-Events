function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 184603297
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1046,y=55,z=-148,dx=-69,dy=-51,dz=60] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHJprng dummy Pseudo-RNG
scoreboard players set &Increment BHJprng 12345
scoreboard players set &Modulus BHJprng 17
scoreboard players set &Multiplier BHJprng 1103515245
scoreboard players set &Offset BHJprng 0
scoreboard players set &Seed BHJprng 0
scoreboard objectives add BHJ dummy Jungle
scoreboard objectives setdisplay sidebar BHJ
scoreboard objectives add BHJpl dummy Jungle Player List
scoreboard objectives add BHJsa dummy Jungle Select All
scoreboard objectives add BHJti dummy Jungle Timer
scoreboard objectives add BHJchi dummy Jungle Count Hiders
scoreboard objectives add BHJcvr dummy Jungle Count Virus
scoreboard objectives add BHJgl dummy Jungle Glowing Players
scoreboard objectives add BHJcalc dummy Jungle Calculations
scoreboard objectives add BHJst dummy Jungle State
scoreboard teams add BHJh Jungle Hiders
scoreboard teams option BHJh friendlyfire false
scoreboard teams option BHJh collisionRule never
scoreboard teams option BHJh deathMessageVisibility never
scoreboard teams option BHJh color green
scoreboard teams option BHJh nametagVisibility hideForOtherTeams
scoreboard teams add BHJv Jungle Virus
scoreboard teams option BHJv friendlyfire false
scoreboard teams option BHJv collisionRule never
scoreboard teams option BHJv deathMessageVisibility never
scoreboard teams option BHJv color yellow
scoreboard teams add BHJd_y Jungle Display Yellow
scoreboard teams option BHJd_y color yellow
scoreboard teams add BHJd_g Jungle Display Green
scoreboard teams option BHJd_g color green
scoreboard teams join BHJd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHJd_g Hiders
scoreboard players set BHJCountdown BHJcalc 1200
scoreboard players set BHJGlowing BHJcalc 6000
scoreboard players set BHJGameTime BHJcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHJStand","BHJEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHJStand] ~ ~ ~ function ego:bh_jungle/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHJ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Jungle","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 184603297"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Jungle","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Jungle","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 184603297"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 184603297
