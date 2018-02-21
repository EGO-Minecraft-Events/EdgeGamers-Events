function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 1807172851
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1213,y=45,z=-222,dx=73,dy=-41,dz=-72] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHMprng dummy Pseudo-RNG
scoreboard players set &Increment BHMprng 12345
scoreboard players set &Modulus BHMprng 23
scoreboard players set &Multiplier BHMprng 1103515245
scoreboard players set &Offset BHMprng 0
scoreboard players set &Seed BHMprng 0
scoreboard objectives add BHM dummy Mastermind
scoreboard objectives setdisplay sidebar BHM
scoreboard objectives add BHMpl dummy Mastermind Player List
scoreboard objectives add BHMsa dummy Mastermind Select All
scoreboard objectives add BHMti dummy Mastermind Timer
scoreboard objectives add BHMchi dummy Mastermind Count Hiders
scoreboard objectives add BHMcvr dummy Mastermind Count Virus
scoreboard objectives add BHMgl dummy Mastermind Glowing Players
scoreboard objectives add BHMcalc dummy Mastermind Calculations
scoreboard objectives add BHMst dummy Mastermind State
scoreboard teams add BHMh Mastermind Hiders
scoreboard teams option BHMh friendlyfire false
scoreboard teams option BHMh collisionRule never
scoreboard teams option BHMh deathMessageVisibility never
scoreboard teams option BHMh color green
scoreboard teams option BHMh nametagVisibility hideForOtherTeams
scoreboard teams add BHMv Mastermind Virus
scoreboard teams option BHMv friendlyfire false
scoreboard teams option BHMv collisionRule never
scoreboard teams option BHMv deathMessageVisibility never
scoreboard teams option BHMv color yellow
scoreboard teams add BHMd_y Mastermind Display Yellow
scoreboard teams option BHMd_y color yellow
scoreboard teams add BHMd_g Mastermind Display Green
scoreboard teams option BHMd_g color green
scoreboard teams join BHMd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHMd_g Hiders
scoreboard players set BHMCountdown BHMcalc 1200
scoreboard players set BHMGlowing BHMcalc 6000
scoreboard players set BHMGameTime BHMcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHMStand","BHMEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHMStand] ~ ~ ~ function ego:bh_mastermind/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1807172851"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1807172851"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1807172851
