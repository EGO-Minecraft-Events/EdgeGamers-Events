function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 818788035
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1263,y=38,z=-189,dx=42,dy=-34,dz=-99] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHPprng dummy Pseudo-RNG
scoreboard players set &Increment BHPprng 12345
scoreboard players set &Modulus BHPprng 7
scoreboard players set &Multiplier BHPprng 1103515245
scoreboard players set &Offset BHPprng 0
scoreboard players set &Seed BHPprng 0
scoreboard objectives add BHP dummy Park
scoreboard objectives setdisplay sidebar BHP
scoreboard objectives add BHPpl dummy Park Player List
scoreboard objectives add BHPsa dummy Park Select All
scoreboard objectives add BHPti dummy Park Timer
scoreboard objectives add BHPchi dummy Park Count Hiders
scoreboard objectives add BHPcvr dummy Park Count Virus
scoreboard objectives add BHPgl dummy Park Glowing Players
scoreboard objectives add BHPcalc dummy Park Calculations
scoreboard objectives add BHPst dummy Park State
scoreboard teams add BHPh Park Hiders
scoreboard teams option BHPh friendlyfire false
scoreboard teams option BHPh collisionRule never
scoreboard teams option BHPh deathMessageVisibility never
scoreboard teams option BHPh color green
scoreboard teams option BHPh nametagVisibility hideForOtherTeams
scoreboard teams add BHPv Park Virus
scoreboard teams option BHPv friendlyfire false
scoreboard teams option BHPv collisionRule never
scoreboard teams option BHPv deathMessageVisibility never
scoreboard teams option BHPv color yellow
scoreboard teams add BHPd_y Park Display Yellow
scoreboard teams option BHPd_y color yellow
scoreboard teams add BHPd_g Park Display Green
scoreboard teams option BHPd_g color green
scoreboard teams join BHPd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHPd_g Hiders
scoreboard players set BHPCountdown BHPcalc 1200
scoreboard players set BHPGlowing BHPcalc 6000
scoreboard players set BHPGameTime BHPcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHPStand","BHPEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHPStand] ~ ~ ~ function ego:bh_park/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHP","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Park","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 818788035"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Park","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Park","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 818788035"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 818788035
