function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 993875352
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1208,y=34,z=-186,dx=-176,dy=-30,dz=176] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHTSprng dummy Pseudo-RNG
scoreboard players set &Increment BHTSprng 12345
scoreboard players set &Modulus BHTSprng 8
scoreboard players set &Multiplier BHTSprng 1103515245
scoreboard players set &Offset BHTSprng 0
scoreboard players set &Seed BHTSprng 0
scoreboard objectives add BHTS dummy Train Station
scoreboard objectives setdisplay sidebar BHTS
scoreboard objectives add BHTSpl dummy Train Station Player List
scoreboard objectives add BHTSsa dummy Train Station Select All
scoreboard objectives add BHTSti dummy Train Station Timer
scoreboard objectives add BHTSchi dummy Train Station Count Hiders
scoreboard objectives add BHTScvr dummy Train Station Count Virus
scoreboard objectives add BHTSgl dummy Train Station Glowing Players
scoreboard objectives add BHTScalc dummy Train Station Calculations
scoreboard objectives add BHTSst dummy Train Station State
scoreboard teams add BHTSh Train Station Hiders
scoreboard teams option BHTSh friendlyfire false
scoreboard teams option BHTSh collisionRule never
scoreboard teams option BHTSh deathMessageVisibility never
scoreboard teams option BHTSh color green
scoreboard teams option BHTSh nametagVisibility hideForOtherTeams
scoreboard teams add BHTSv Train Station Virus
scoreboard teams option BHTSv friendlyfire false
scoreboard teams option BHTSv collisionRule never
scoreboard teams option BHTSv deathMessageVisibility never
scoreboard teams option BHTSv color yellow
scoreboard teams add BHTSd_y Train Station Display Yellow
scoreboard teams option BHTSd_y color yellow
scoreboard teams add BHTSd_g Train Station Display Green
scoreboard teams option BHTSd_g color green
scoreboard teams join BHTSd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHTSd_g Hiders
scoreboard players set BHTSCountdown BHTScalc 1200
scoreboard players set BHTSGlowing BHTScalc 6000
scoreboard players set BHTSGameTime BHTScalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHTSStand","BHTSEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHTSStand] ~ ~ ~ function ego:bh_train_station/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHTS","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Train Station","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 993875352"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Train Station","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Train Station","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 993875352"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 993875352
