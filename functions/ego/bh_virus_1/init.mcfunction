function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 8130627
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181] gSA 1
scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add BHVR1prng dummy Pseudo-RNG
scoreboard players set &Increment BHVR1prng 12345
scoreboard players set &Modulus BHVR1prng 8
scoreboard players set &Multiplier BHVR1prng 1103515245
scoreboard players set &Offset BHVR1prng 0
scoreboard players set &Seed BHVR1prng 0
scoreboard objectives add BHVR1 dummy Virus 1
scoreboard objectives setdisplay sidebar BHVR1
scoreboard objectives add BHVR1pl dummy Virus 1 Player List
scoreboard objectives add BHVR1sa dummy Virus 1 Select All
scoreboard objectives add BHVR1ti dummy Virus 1 Timer
scoreboard objectives add BHVR1chi dummy Virus 1 Count Hiders
scoreboard objectives add BHVR1cvr dummy Virus 1 Count Virus
scoreboard objectives add BHVR1gl dummy Virus 1 Glowing Players
scoreboard objectives add BHVR1calc dummy Virus 1 Calculations
scoreboard objectives add BHVR1st dummy Virus 1 State
scoreboard teams add BHVR1h Virus 1 Hiders
scoreboard teams option BHVR1h collisionRule never
scoreboard teams option BHVR1h nametagVisibility hideForOtherTeams
scoreboard teams option BHVR1h deathMessageVisibility never
scoreboard teams option BHVR1h friendlyfire false
scoreboard teams option BHVR1h color green
scoreboard teams add BHVR1v Virus 1 Virus
scoreboard teams option BHVR1v collisionRule never
scoreboard teams option BHVR1v deathMessageVisibility never
scoreboard teams option BHVR1v friendlyfire false
scoreboard teams option BHVR1v color yellow
scoreboard teams add BHVR1d_y Virus 1 Display Yellow
scoreboard teams option BHVR1d_y color yellow
scoreboard teams add BHVR1d_g Virus 1 Display Green
scoreboard teams option BHVR1d_g color green
scoreboard teams join BHVR1d_y Countdown Minutes Seconds Seekers
scoreboard teams join BHVR1d_g Hiders
scoreboard players set BHVR1Countdown BHVR1calc 1200
scoreboard players set BHVR1Glowing BHVR1calc 6000
scoreboard players set BHVR1GameTime BHVR1calc 12000
summon armor_stand ~ ~ ~ {Tags:["BHVR1Stand","BHVR1Entity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=BHVR1Stand] ~ ~ ~ function ego:bh_virus_1/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"BHVR1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 8130627"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Virus 1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 8130627"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 8130627
