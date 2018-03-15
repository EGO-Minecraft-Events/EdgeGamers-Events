function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 607841732
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1117,y=48,z=-153,dx=73,dy=-44,dz=-72] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHMVprng dummy Pseudo-RNG
scoreboard players set &Increment BHMVprng 12345
scoreboard players set &Modulus BHMVprng 16
scoreboard players set &Multiplier BHMVprng 1103515245
scoreboard players set &Offset BHMVprng 0
scoreboard players set &Seed BHMVprng 0
scoreboard objectives add BHMV dummy Mushroom Village
scoreboard objectives setdisplay sidebar BHMV
scoreboard objectives add BHMVpl dummy Mushroom Village Player List
scoreboard objectives add BHMVsa dummy Mushroom Village Select All
scoreboard objectives add BHMVti dummy Mushroom Village Timer
scoreboard objectives add BHMVchi dummy Mushroom Village Count Hiders
scoreboard objectives add BHMVcvr dummy Mushroom Village Count Seekers
scoreboard objectives add BHMVgl dummy Mushroom Village Glowing Players
scoreboard objectives add BHMVcalc dummy Mushroom Village Calculations
scoreboard objectives add BHMVst dummy Mushroom Village State
scoreboard teams add BHMVh Mushroom Village Hiders
scoreboard teams option BHMVh friendlyfire false
scoreboard teams option BHMVh collisionRule never
scoreboard teams option BHMVh deathMessageVisibility always
scoreboard teams option BHMVh color green
scoreboard teams option BHMVh nametagVisibility never
scoreboard teams option BHMVh seeFriendlyInvisibles false
scoreboard teams add BHMVv Mushroom Village Seekers
scoreboard teams option BHMVv friendlyfire false
scoreboard teams option BHMVv collisionRule never
scoreboard teams option BHMVv deathMessageVisibility always
scoreboard teams option BHMVv color yellow
scoreboard teams add BHMVd_y Mushroom Village Display Yellow
scoreboard teams option BHMVd_y color yellow
scoreboard teams add BHMVd_g Mushroom Village Display Green
scoreboard teams option BHMVd_g color green
scoreboard players set @s HOST 0
scoreboard teams join BHMVd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHMVd_g Hiders
scoreboard players set &Countdown BHMVcalc 1200
scoreboard players set &Glowing BHMVcalc 6000
scoreboard players set &GameTime BHMVcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHMVStand","BHMVEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHMVStand] ~ ~ ~ function ego:bh_mushroom_village/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMV","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mushroom Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 607841732"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Mushroom Village","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Mushroom Village","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 607841732"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 607841732
