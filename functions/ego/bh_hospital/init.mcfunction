function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 1159673785
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1047,y=42,z=-190,dx=-90,dy=-39,dz=-42] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHHprng dummy Pseudo-RNG
scoreboard players set &Increment BHHprng 12345
scoreboard players set &Modulus BHHprng 21
scoreboard players set &Multiplier BHHprng 1103515245
scoreboard players set &Offset BHHprng 0
scoreboard players set &Seed BHHprng 0
scoreboard objectives add BHH dummy Hospital
scoreboard objectives setdisplay sidebar BHH
scoreboard objectives add BHHpl dummy Hospital Player List
scoreboard objectives add BHHsa dummy Hospital Select All
scoreboard objectives add BHHti dummy Hospital Timer
scoreboard objectives add BHHchi dummy Hospital Count Hiders
scoreboard objectives add BHHcvr dummy Hospital Count Virus
scoreboard objectives add BHHgl dummy Hospital Glowing Players
scoreboard objectives add BHHcalc dummy Hospital Calculations
scoreboard objectives add BHHst dummy Hospital State
scoreboard teams add BHHh Hospital Hiders
scoreboard teams option BHHh nametagVisibility hideForOtherTeams
scoreboard teams option BHHh collisionRule never
scoreboard teams option BHHh color green
scoreboard teams option BHHh friendlyfire false
scoreboard teams option BHHh deathMessageVisibility never
scoreboard teams add BHHv Hospital Virus
scoreboard teams option BHHv collisionRule never
scoreboard teams option BHHv color yellow
scoreboard teams option BHHv friendlyfire false
scoreboard teams option BHHv deathMessageVisibility never
scoreboard teams add BHHd_y Hospital Display Yellow
scoreboard teams option BHHd_y color yellow
scoreboard teams add BHHd_g Hospital Display Green
scoreboard teams option BHHd_g color green
scoreboard teams join BHHd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHHd_g Hiders
scoreboard players set BHHCountdown BHHcalc 1200
scoreboard players set BHHGlowing BHHcalc 6000
scoreboard players set BHHGameTime BHHcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHHStand","BHHEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHHStand] ~ ~ ~ function ego:bh_hospital/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHH","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Hospital","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1159673785"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Hospital","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Hospital","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1159673785"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1159673785
