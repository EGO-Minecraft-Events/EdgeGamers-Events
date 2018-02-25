function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 478919104
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1120,y=28,z=-10,dx=76,dy=-24,dz=-74] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHHDprng dummy Pseudo-RNG
scoreboard players set &Increment BHHDprng 12345
scoreboard players set &Modulus BHHDprng 16
scoreboard players set &Multiplier BHHDprng 1103515245
scoreboard players set &Offset BHHDprng 0
scoreboard players set &Seed BHHDprng 0
scoreboard objectives add BHHD dummy HASDaa
scoreboard objectives setdisplay sidebar BHHD
scoreboard objectives add BHHDpl dummy HASDaa Player List
scoreboard objectives add BHHDsa dummy HASDaa Select All
scoreboard objectives add BHHDti dummy HASDaa Timer
scoreboard objectives add BHHDchi dummy HASDaa Count Hiders
scoreboard objectives add BHHDcvr dummy HASDaa Count Virus
scoreboard objectives add BHHDgl dummy HASDaa Glowing Players
scoreboard objectives add BHHDcalc dummy HASDaa Calculations
scoreboard objectives add BHHDst dummy HASDaa State
scoreboard teams add BHHDh HASDaa Hiders
scoreboard teams option BHHDh nametagVisibility hideForOtherTeams
scoreboard teams option BHHDh color green
scoreboard teams option BHHDh collisionRule never
scoreboard teams option BHHDh friendlyfire false
scoreboard teams option BHHDh deathMessageVisibility never
scoreboard teams add BHHDv HASDaa Virus
scoreboard teams option BHHDv color yellow
scoreboard teams option BHHDv collisionRule never
scoreboard teams option BHHDv friendlyfire false
scoreboard teams option BHHDv deathMessageVisibility never
scoreboard teams add BHHDd_y HASDaa Display Yellow
scoreboard teams option BHHDd_y color yellow
scoreboard teams add BHHDd_g HASDaa Display Green
scoreboard teams option BHHDd_g color green
scoreboard teams join BHHDd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHHDd_g Hiders
scoreboard players set BHHDCountdown BHHDcalc 1200
scoreboard players set BHHDGlowing BHHDcalc 6000
scoreboard players set BHHDGameTime BHHDcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHHDStand","BHHDEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHHDStand] ~ ~ ~ function ego:bh_hasdaa/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHHD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"HASDaa","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 478919104"}},{"text":"]","color":"gray"},{"text":": "},{"text":"HASDaa","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"HASDaa","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 478919104"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 478919104
