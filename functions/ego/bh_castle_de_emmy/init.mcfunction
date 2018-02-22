function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 606156446
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1570,y=73,z=-7,dx=-93,dy=-73,dz=-95] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHCDEprng dummy Pseudo-RNG
scoreboard players set &Increment BHCDEprng 12345
scoreboard players set &Modulus BHCDEprng 25
scoreboard players set &Multiplier BHCDEprng 1103515245
scoreboard players set &Offset BHCDEprng 0
scoreboard players set &Seed BHCDEprng 0
scoreboard objectives add BHCDE dummy Castle de Emmy
scoreboard objectives setdisplay sidebar BHCDE
scoreboard objectives add BHCDEpl dummy Castle de Emmy Player List
scoreboard objectives add BHCDEsa dummy Castle de Emmy Select All
scoreboard objectives add BHCDEti dummy Castle de Emmy Timer
scoreboard objectives add BHCDEchi dummy Castle de Emmy Count Hiders
scoreboard objectives add BHCDEcvr dummy Castle de Emmy Count Virus
scoreboard objectives add BHCDEgl dummy Castle de Emmy Glowing Players
scoreboard objectives add BHCDEcalc dummy Castle de Emmy Calculations
scoreboard objectives add BHCDEst dummy Castle de Emmy State
scoreboard teams add BHCDEh Castle de Emmy Hiders
scoreboard teams option BHCDEh friendlyfire false
scoreboard teams option BHCDEh collisionRule never
scoreboard teams option BHCDEh deathMessageVisibility never
scoreboard teams option BHCDEh color green
scoreboard teams option BHCDEh nametagVisibility hideForOtherTeams
scoreboard teams add BHCDEv Castle de Emmy Virus
scoreboard teams option BHCDEv friendlyfire false
scoreboard teams option BHCDEv collisionRule never
scoreboard teams option BHCDEv deathMessageVisibility never
scoreboard teams option BHCDEv color yellow
scoreboard teams add BHCDEd_y Castle de Emmy Display Yellow
scoreboard teams option BHCDEd_y color yellow
scoreboard teams add BHCDEd_g Castle de Emmy Display Green
scoreboard teams option BHCDEd_g color green
scoreboard teams join BHCDEd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHCDEd_g Hiders
scoreboard players set BHCDECountdown BHCDEcalc 1200
scoreboard players set BHCDEGlowing BHCDEcalc 6000
scoreboard players set BHCDEGameTime BHCDEcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHCDEStand","BHCDEEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHCDEStand] ~ ~ ~ function ego:bh_castle_de_emmy/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHCDE","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Castle de Emmy","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 606156446"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Castle de Emmy","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Castle de Emmy","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 606156446"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 606156446
