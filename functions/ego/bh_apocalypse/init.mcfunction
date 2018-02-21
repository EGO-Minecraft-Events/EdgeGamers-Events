function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 924805254
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1565,y=47,z=-102,dx=76,dy=-43,dz=96] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHAprng dummy Pseudo-RNG
scoreboard players set &Increment BHAprng 12345
scoreboard players set &Modulus BHAprng 14
scoreboard players set &Multiplier BHAprng 1103515245
scoreboard players set &Offset BHAprng 0
scoreboard players set &Seed BHAprng 0
scoreboard objectives add BHA dummy Apocalypse
scoreboard objectives setdisplay sidebar BHA
scoreboard objectives add BHApl dummy Apocalypse Player List
scoreboard objectives add BHAsa dummy Apocalypse Select All
scoreboard objectives add BHAti dummy Apocalypse Timer
scoreboard objectives add BHAchi dummy Apocalypse Count Hiders
scoreboard objectives add BHAcvr dummy Apocalypse Count Virus
scoreboard objectives add BHAgl dummy Apocalypse Glowing Players
scoreboard objectives add BHAcalc dummy Apocalypse Calculations
scoreboard objectives add BHAst dummy Apocalypse State
scoreboard teams add BHAh Apocalypse Hiders
scoreboard teams option BHAh friendlyfire false
scoreboard teams option BHAh collisionRule never
scoreboard teams option BHAh deathMessageVisibility never
scoreboard teams option BHAh color green
scoreboard teams option BHAh nametagVisibility hideForOtherTeams
scoreboard teams add BHAv Apocalypse Virus
scoreboard teams option BHAv friendlyfire false
scoreboard teams option BHAv collisionRule never
scoreboard teams option BHAv deathMessageVisibility never
scoreboard teams option BHAv color yellow
scoreboard teams add BHAd_y Apocalypse Display Yellow
scoreboard teams option BHAd_y color yellow
scoreboard teams add BHAd_g Apocalypse Display Green
scoreboard teams option BHAd_g color green
scoreboard teams join BHAd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHAd_g Hiders
scoreboard players set BHACountdown BHAcalc 1200
scoreboard players set BHAGlowing BHAcalc 6000
scoreboard players set BHAGameTime BHAcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHAStand","BHAEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHAStand] ~ ~ ~ function ego:bh_apocalypse/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Apocalypse","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 924805254"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Apocalypse","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Apocalypse","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 924805254"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 924805254
