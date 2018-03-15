function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 763826195
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-107,y=2,z=-130,dx=193,dy=100,dz=241] gSA 1
scoreboard objectives add constants dummy
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add VR2 dummy Virus 2
scoreboard objectives setdisplay sidebar VR2
scoreboard objectives add VR2pl dummy Virus 2 Player List
scoreboard objectives add VR2sa dummy Virus 2 Select All
scoreboard objectives add VR2ti dummy Virus 2 Timer
scoreboard objectives add VR2chi dummy Virus 2 Count Hiders
scoreboard objectives add VR2cvr dummy Virus 2 Count Virus
scoreboard objectives add VR2gl dummy Virus 2 Glowing Players
scoreboard objectives add VR2calc dummy Virus 2 Calculations
scoreboard objectives add VR2st dummy Virus 2 State
scoreboard teams add VR2h Virus 2 Hiders
scoreboard teams option VR2h friendlyfire false
scoreboard teams option VR2h collisionRule never
scoreboard teams option VR2h deathMessageVisibility always
scoreboard teams option VR2h color green
scoreboard teams option VR2h nametagVisibility hideForOtherTeams
scoreboard teams add VR2v Virus 2 Virus
scoreboard teams option VR2v friendlyfire false
scoreboard teams option VR2v collisionRule never
scoreboard teams option VR2v deathMessageVisibility always
scoreboard teams option VR2v color yellow
scoreboard teams add VR2d_y Virus 2 Display Yellow
scoreboard teams option VR2d_y color yellow
scoreboard teams add VR2d_g Virus 2 Display Green
scoreboard teams option VR2d_g color green
scoreboard players set @s HOST 0
scoreboard teams join VR2d_y Countdown Minutes Seconds Virus
scoreboard teams join VR2d_g Hiders
scoreboard players set &Countdown VR2calc 1200
scoreboard players set &Glowing VR2calc 6000
scoreboard players set &GameTime VR2calc 12000
summon armor_stand ~ ~ ~ {Tags:["VR2Stand","VR2Entity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=VR2Stand] ~ ~ ~ function ego:virus_2/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"VR2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 763826195"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Virus 2","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 2","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 763826195"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 763826195
