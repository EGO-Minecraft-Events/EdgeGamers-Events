function ego:floo_network/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 1964796834
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
scoreboard players set @a gSA 0
scoreboard players set @a[x=219,y=4,z=-177,dx=77,dy=100,dz=38] gSA 1
scoreboard objectives add QR dummy Quartz Race
scoreboard objectives setdisplay sidebar QR
scoreboard players set /spawn QR 99
scoreboard objectives add QRcd dummy Quartz Race Countdown
scoreboard objectives add QRpl dummy Quartz Race Player List
scoreboard teams add QRr Quartz Race
scoreboard teams option QRr color white
scoreboard teams option QRr seeFriendlyInvisibles true
scoreboard teams option QRr collisionRule never
scoreboard teams option QRr friendlyfire false
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["QR_cd"]}
scoreboard teams join QRr /spawn
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Quartz Race","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":" has started!","color":"green"}]}
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=0,score_FLgam=0] FLgam 1964796834
