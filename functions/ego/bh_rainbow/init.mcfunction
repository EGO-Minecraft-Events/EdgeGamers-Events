function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 366421968
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1130,y=38,z=-93,dx=-42,dy=-34,dz=83] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHRAprng dummy Pseudo-RNG
scoreboard players set &Increment BHRAprng 12345
scoreboard players set &Modulus BHRAprng 9
scoreboard players set &Multiplier BHRAprng 1103515245
scoreboard players set &Offset BHRAprng 0
scoreboard players set &Seed BHRAprng 0
scoreboard objectives add BHRA dummy Rainbow
scoreboard objectives setdisplay sidebar BHRA
scoreboard objectives add BHRApl dummy Rainbow Player List
scoreboard objectives add BHRAsa dummy Rainbow Select All
scoreboard objectives add BHRAti dummy Rainbow Timer
scoreboard objectives add BHRAchi dummy Rainbow Count Hiders
scoreboard objectives add BHRAcvr dummy Rainbow Count Virus
scoreboard objectives add BHRAgl dummy Rainbow Glowing Players
scoreboard objectives add BHRAcalc dummy Rainbow Calculations
scoreboard objectives add BHRAst dummy Rainbow State
scoreboard teams add BHRAh Rainbow Hiders
scoreboard teams option BHRAh friendlyfire false
scoreboard teams option BHRAh collisionRule never
scoreboard teams option BHRAh deathMessageVisibility never
scoreboard teams option BHRAh color green
scoreboard teams option BHRAh nametagVisibility hideForOtherTeams
scoreboard teams add BHRAv Rainbow Virus
scoreboard teams option BHRAv friendlyfire false
scoreboard teams option BHRAv collisionRule never
scoreboard teams option BHRAv deathMessageVisibility never
scoreboard teams option BHRAv color yellow
scoreboard teams add BHRAd_y Rainbow Display Yellow
scoreboard teams option BHRAd_y color yellow
scoreboard teams add BHRAd_g Rainbow Display Green
scoreboard teams option BHRAd_g color green
scoreboard teams join BHRAd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHRAd_g Hiders
scoreboard players set BHRACountdown BHRAcalc 1200
scoreboard players set BHRAGlowing BHRAcalc 6000
scoreboard players set BHRAGameTime BHRAcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHRAStand","BHRAEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHRAStand] ~ ~ ~ function ego:bh_rainbow/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHRA","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Rainbow","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 366421968"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Rainbow","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Rainbow","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 366421968"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 366421968
