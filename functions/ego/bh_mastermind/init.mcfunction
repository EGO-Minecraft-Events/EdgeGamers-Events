function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 408217586
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1213,y=51,z=-222,dx=73,dy=-47,dz=-72] gSA 1
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
scoreboard objectives add BHMM dummy BH Mastermind
scoreboard objectives setdisplay sidebar BHMM
scoreboard objectives add BHMMpl dummy BH Mastermind Player List
scoreboard objectives add BHMMsa dummy BH Mastermind Select All
scoreboard objectives add BHMMti dummy BH Mastermind Timer
scoreboard objectives add BHMMchi dummy BH Mastermind Count Hiders
scoreboard objectives add BHMMcvr dummy BH Mastermind Count Seekers
scoreboard objectives add BHMMgl dummy BH Mastermind Glowing Players
scoreboard objectives add BHMMcalc dummy BH Mastermind Calculations
scoreboard objectives add BHMMst dummy BH Mastermind State
scoreboard teams add BHMMh BH Mastermind Hiders
scoreboard teams option BHMMh friendlyfire false
scoreboard teams option BHMMh collisionRule never
scoreboard teams option BHMMh deathMessageVisibility always
scoreboard teams option BHMMh color green
scoreboard teams option BHMMh nametagVisibility never
scoreboard teams option BHMMh seeFriendlyInvisibles false
scoreboard teams add BHMMv BH Mastermind Seekers
scoreboard teams option BHMMv friendlyfire false
scoreboard teams option BHMMv collisionRule never
scoreboard teams option BHMMv deathMessageVisibility always
scoreboard teams option BHMMv color yellow
scoreboard teams add BHMMd_y BH Mastermind Display Yellow
scoreboard teams option BHMMd_y color yellow
scoreboard teams add BHMMd_g BH Mastermind Display Green
scoreboard teams option BHMMd_g color green
scoreboard players set @s HOST 0
scoreboard teams join BHMMd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHMMd_g Hiders
scoreboard players set &Countdown BHMMcalc 1200
scoreboard players set &Glowing BHMMcalc 6000
scoreboard players set &GameTime BHMMcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHMMStand","BHMMEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHMMStand] ~ ~ ~ function ego:bh_mastermind/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHMM","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BH Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 408217586"}},{"text":"]","color":"gray"},{"text":": "},{"text":"BH Mastermind","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"BH Mastermind","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 408217586"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 408217586
