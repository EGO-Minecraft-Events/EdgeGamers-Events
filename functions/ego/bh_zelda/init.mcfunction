function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 558233482
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1127,y=50,z=-218,dx=-86,dy=-47,dz=38] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHZprng dummy Pseudo-RNG
scoreboard players set &Increment BHZprng 12345
scoreboard players set &Modulus BHZprng 11
scoreboard players set &Multiplier BHZprng 1103515245
scoreboard players set &Offset BHZprng 0
scoreboard players set &Seed BHZprng 0
scoreboard objectives add BHZ dummy Zelda
scoreboard objectives setdisplay sidebar BHZ
scoreboard objectives add BHZpl dummy Zelda Player List
scoreboard objectives add BHZsa dummy Zelda Select All
scoreboard objectives add BHZti dummy Zelda Timer
scoreboard objectives add BHZchi dummy Zelda Count Hiders
scoreboard objectives add BHZcvr dummy Zelda Count Virus
scoreboard objectives add BHZgl dummy Zelda Glowing Players
scoreboard objectives add BHZcalc dummy Zelda Calculations
scoreboard objectives add BHZst dummy Zelda State
scoreboard teams add BHZh Zelda Hiders
scoreboard teams option BHZh nametagVisibility hideForOtherTeams
scoreboard teams option BHZh color green
scoreboard teams option BHZh friendlyfire false
scoreboard teams option BHZh deathMessageVisibility never
scoreboard teams option BHZh collisionRule never
scoreboard teams add BHZv Zelda Virus
scoreboard teams option BHZv color yellow
scoreboard teams option BHZv friendlyfire false
scoreboard teams option BHZv deathMessageVisibility never
scoreboard teams option BHZv collisionRule never
scoreboard teams add BHZd_y Zelda Display Yellow
scoreboard teams option BHZd_y color yellow
scoreboard teams add BHZd_g Zelda Display Green
scoreboard teams option BHZd_g color green
scoreboard teams join BHZd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHZd_g Hiders
scoreboard players set BHZCountdown BHZcalc 1200
scoreboard players set BHZGlowing BHZcalc 6000
scoreboard players set BHZGameTime BHZcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHZStand","BHZEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHZStand] ~ ~ ~ function ego:bh_zelda/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHZ","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Zelda","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 558233482"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Zelda","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Zelda","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 558233482"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 558233482
