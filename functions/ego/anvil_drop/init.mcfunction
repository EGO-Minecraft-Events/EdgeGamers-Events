function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 333805818
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
gamerule naturalRegeneration false
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 100
scoreboard players set @a gSA 0
scoreboard players set @a[x=-38,y=0,z=76,dx=22,dy=35,dz=22] gSA 1
scoreboard objectives add constants dummy
scoreboard players set 20 constants 20
scoreboard players set 5 constants 5
scoreboard objectives add AD dummy Anvil Drop
scoreboard objectives setdisplay sidebar AD
scoreboard objectives add ADpe1 dummy Anvil Drop Input Layer 1 %
scoreboard objectives add ADpe2 dummy Anvil Drop Input Layer 2 %
scoreboard objectives add ADpe3 dummy Anvil Drop Input Walls Toggle
scoreboard objectives add ADiti1 dummy Anvil Drop Input Timer 1
scoreboard objectives add ADiti2 dummy Anvil Drop Input Timer 2
scoreboard objectives add ADiti3 dummy Anvil Drop Input Timer 3
scoreboard objectives add ADti dummy Anvil Drop Countdown Timer
scoreboard objectives add ADti1 dummy Anvil Drop Layer 1 Timer
scoreboard objectives add ADti2 dummy Anvil Drop Layer 2 Timer
scoreboard objectives add ADti3 dummy Anvil Drop Layer 3 Timer
scoreboard objectives add ADpl dummy Anvil Drop Player List
scoreboard objectives add ADst dummy Anvil Drop State
scoreboard objectives add ADdp dummy Anvil Drop display
scoreboard objectives add ADcl dummy Anvil Drop Calc
scoreboard teams add AD Anvil Drop
scoreboard teams option AD color green
scoreboard teams option AD collisionRule never
scoreboard teams option AD friendlyfire false
scoreboard teams add ADd_y Anvil Drop . Display Yellow
scoreboard teams option ADd_y color yellow
scoreboard teams join ADd_y Countdown Players Time_Elapsed
fill -57 5 80 -57 4 80 redstone_block
fill -57 5 80 -57 4 80 stonebrick
setblock -36 15 79 structure_block 0 replace {integrity:0.5f,mode:"LOAD",posX:3,posY:-3,posZ:2,name="AD_layer"}
setblock -36 14 79 structure_block 0 replace {integrity:0.5f,mode:"LOAD",posX:3,posY:-2,posZ:2,name="AD_layer"}
setblock -36 13 79 structure_block 0 replace {integrity:1.0f,mode:"LOAD",posX:3,posY:-1,posZ:2,name="AD_walls"}
summon armor_stand ~ ~ ~ {Tags:["ADEntity","ADStand"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set @e[type=armor_stand,tag=ADStand] ADst 0
scoreboard players set @e[type=armor_stand,tag=ADStand] ADpe1 50
scoreboard players set @e[type=armor_stand,tag=ADStand] ADpe2 0
scoreboard players set @e[type=armor_stand,tag=ADStand] ADpe3 0
scoreboard players set @e[type=armor_stand,tag=ADStand] ADiti1 60
scoreboard players set @e[type=armor_stand,tag=ADStand] ADiti2 0
scoreboard players set @e[type=armor_stand,tag=ADStand] ADiti3 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"AD","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Anvil Drop","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Anvil Drop","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 333805818"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 333805818
