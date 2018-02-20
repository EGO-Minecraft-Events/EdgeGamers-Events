function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 1561350378
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 2
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=-130,y=4,z=-315,dx=121,dy=60,dz=181] gSA 1
scoreboard objectives add constants dummy
scoreboard players set 1200 constants 1200
scoreboard players set 20 constants 20
scoreboard players set 60 constants 60
scoreboard objectives add VR1 dummy Virus 1
scoreboard objectives setdisplay sidebar VR1
scoreboard objectives add VR1pl dummy Virus 1 Player List
scoreboard objectives add VR1sa dummy Virus 1 Select All
scoreboard objectives add VR1ti dummy Virus 1 Timer
scoreboard objectives add VR1chi dummy Virus 1 Count Hiders
scoreboard objectives add VR1cvr dummy Virus 1 Count Virus
scoreboard objectives add VR1gl dummy Virus 1 Glowing Players
scoreboard objectives add VR1calc dummy Virus 1 Calculations
scoreboard objectives add VR1st dummy Virus 1 State
scoreboard teams add VR1h Virus 1 Hiders
scoreboard teams option VR1h friendlyfire false
scoreboard teams option VR1h collisionRule never
scoreboard teams option VR1h deathMessageVisibility never
scoreboard teams option VR1h color green
scoreboard teams option VR1h nametagVisibility hideForOtherTeams
scoreboard teams add VR1v Virus 1 Virus
scoreboard teams option VR1v friendlyfire false
scoreboard teams option VR1v collisionRule never
scoreboard teams option VR1v deathMessageVisibility never
scoreboard teams option VR1v color yellow
scoreboard teams add VR1d_y Virus 1 Display Yellow
scoreboard teams option VR1d_y color yellow
scoreboard teams add VR1d_g Virus 1 Display Green
scoreboard teams option VR1d_g color green
scoreboard teams join VR1d_y Countdown Minutes Seconds Virus
scoreboard teams join VR1d_g Hiders
scoreboard players set VR1Countdown VR1calc 1200
scoreboard players set VR1Glowing VR1calc 6000
scoreboard players set VR1GameTime VR1calc 12000
summon armor_stand ~ ~ ~ {Tags:["VR1Stand","VR1Entity"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
execute @e[type=armor_stand,tag=VR1Stand] ~ ~ ~ function ego:virus_1/reset_round
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"VR1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1561350378"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Virus 1","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Virus 1","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1561350378"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1561350378
