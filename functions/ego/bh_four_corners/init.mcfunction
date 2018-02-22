function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 526354106
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-1358,y=111,z=-190,dx=90,dy=-107,dz=-90] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHFCprng dummy Pseudo-RNG
scoreboard players set &Increment BHFCprng 12345
scoreboard players set &Modulus BHFCprng 23
scoreboard players set &Multiplier BHFCprng 1103515245
scoreboard players set &Offset BHFCprng 0
scoreboard players set &Seed BHFCprng 0
scoreboard objectives add BHFC dummy Four Corners
scoreboard objectives setdisplay sidebar BHFC
scoreboard objectives add BHFCpl dummy Four Corners Player List
scoreboard objectives add BHFCsa dummy Four Corners Select All
scoreboard objectives add BHFCti dummy Four Corners Timer
scoreboard objectives add BHFCchi dummy Four Corners Count Hiders
scoreboard objectives add BHFCcvr dummy Four Corners Count Virus
scoreboard objectives add BHFCgl dummy Four Corners Glowing Players
scoreboard objectives add BHFCcalc dummy Four Corners Calculations
scoreboard objectives add BHFCst dummy Four Corners State
scoreboard teams add BHFCh Four Corners Hiders
scoreboard teams option BHFCh friendlyfire false
scoreboard teams option BHFCh collisionRule never
scoreboard teams option BHFCh deathMessageVisibility never
scoreboard teams option BHFCh color green
scoreboard teams option BHFCh nametagVisibility hideForOtherTeams
scoreboard teams add BHFCv Four Corners Virus
scoreboard teams option BHFCv friendlyfire false
scoreboard teams option BHFCv collisionRule never
scoreboard teams option BHFCv deathMessageVisibility never
scoreboard teams option BHFCv color yellow
scoreboard teams add BHFCd_y Four Corners Display Yellow
scoreboard teams option BHFCd_y color yellow
scoreboard teams add BHFCd_g Four Corners Display Green
scoreboard teams option BHFCd_g color green
scoreboard teams join BHFCd_y Countdown Minutes Seconds Seekers
scoreboard teams join BHFCd_g Hiders
scoreboard players set BHFCCountdown BHFCcalc 1200
scoreboard players set BHFCGlowing BHFCcalc 6000
scoreboard players set BHFCGameTime BHFCcalc 12000
summon armor_stand ~ ~ ~ {Tags:["BHFCStand","BHFCEntity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHFCStand] ~ ~ ~ function ego:bh_four_corners/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHFC","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Four Corners","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 526354106"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Four Corners","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Four Corners","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 526354106"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 526354106
