function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 498683800
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
scoreboard objectives add BHMMprng dummy Pseudo-RNG
scoreboard players set &Increment BHMMprng 12345
scoreboard players set &Modulus BHMMprng 23
scoreboard players set &Multiplier BHMMprng 1103515245
scoreboard players set &Offset BHMMprng 0
scoreboard players set &Seed BHMMprng 0
scoreboard objectives add BHMM dummy Mastermind
scoreboard objectives setdisplay sidebar BHMM
scoreboard objectives add BHMMpl dummy Mastermind Player List
scoreboard objectives add BHMMsa dummy Mastermind Select All
scoreboard objectives add BHMMti dummy Mastermind Timer
scoreboard objectives add BHMMchi dummy Mastermind Count Hiders
scoreboard objectives add BHMMcvr dummy Mastermind Count Virus
scoreboard objectives add BHMMgl dummy Mastermind Glowing Players
scoreboard objectives add BHMMcalc dummy Mastermind Calculations
scoreboard objectives add BHMMst dummy Mastermind State
scoreboard teams add BHMMh Mastermind Hiders
scoreboard teams option BHMMh friendlyfire false
scoreboard teams option BHMMh collisionRule never
scoreboard teams option BHMMh deathMessageVisibility never
scoreboard teams option BHMMh color green
scoreboard teams option BHMMh nametagVisibility hideForOtherTeams
scoreboard teams add BHMMv Mastermind Virus
scoreboard teams option BHMMv friendlyfire false
scoreboard teams option BHMMv collisionRule never
scoreboard teams option BHMMv deathMessageVisibility never
scoreboard teams option BHMMv color yellow
scoreboard teams add BHMMd_y Mastermind Display Yellow
scoreboard teams option BHMMd_y color yellow
scoreboard teams add BHMMd_g Mastermind Display Green
scoreboard teams option BHMMd_g color green
scoreboard teams join BHMMd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHMMd_g Hiders
scoreboard players set BHMMCountdown BHMMcalc 1200
scoreboard players set BHMMGlowing BHMMcalc 6000
scoreboard players set BHMMGameTime BHMMcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHMMStand","BHMMEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHMMStand] ~ ~ ~ function ego:bh_mastermind/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 498683800"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mastermind","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 498683800"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 498683800
