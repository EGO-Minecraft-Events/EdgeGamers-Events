function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 244577678
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1393,y=38,z=-271,dx=-161,dy=-35,dz=162] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHASVprng dummy Pseudo-RNG
scoreboard players set &Increment BHASVprng 12345
scoreboard players set &Modulus BHASVprng 26
scoreboard players set &Multiplier BHASVprng 1103515245
scoreboard players set &Offset BHASVprng 0
scoreboard players set &Seed BHASVprng 0
scoreboard objectives add BHASV dummy A Small Village
scoreboard objectives setdisplay sidebar BHASV
scoreboard objectives add BHASVpl dummy A Small Village Player List
scoreboard objectives add BHASVsa dummy A Small Village Select All
scoreboard objectives add BHASVti dummy A Small Village Timer
scoreboard objectives add BHASVchi dummy A Small Village Count Hiders
scoreboard objectives add BHASVcvr dummy A Small Village Count Virus
scoreboard objectives add BHASVgl dummy A Small Village Glowing Players
scoreboard objectives add BHASVcalc dummy A Small Village Calculations
scoreboard objectives add BHASVst dummy A Small Village State
scoreboard teams add BHASVh A Small Village Hiders
scoreboard teams option BHASVh friendlyfire false
scoreboard teams option BHASVh collisionRule never
scoreboard teams option BHASVh deathMessageVisibility never
scoreboard teams option BHASVh color green
scoreboard teams option BHASVh nametagVisibility hideForOtherTeams
scoreboard teams add BHASVv A Small Village Virus
scoreboard teams option BHASVv friendlyfire false
scoreboard teams option BHASVv collisionRule never
scoreboard teams option BHASVv deathMessageVisibility never
scoreboard teams option BHASVv color yellow
scoreboard teams add BHASVd_y A Small Village Display Yellow
scoreboard teams option BHASVd_y color yellow
scoreboard teams add BHASVd_g A Small Village Display Green
scoreboard teams option BHASVd_g color green
scoreboard teams join BHASVd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHASVd_g Hiders
scoreboard players set BHASVCountdown BHASVcalc 1200
scoreboard players set BHASVGlowing BHASVcalc 6000
scoreboard players set BHASVGameTime BHASVcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHASVStand","BHASVEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHASVStand] ~ ~ ~ function ego:bh_a_small_village/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHASV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"A Small Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244577678"}},{"text":"]","color":"gray"},{"text":": "},{"text":"A Small Village","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"A Small Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 244577678"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 244577678
