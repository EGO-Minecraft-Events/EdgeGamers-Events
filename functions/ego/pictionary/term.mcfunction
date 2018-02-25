scoreboard players set @a gSA 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLreg 0
gamerule naturalRegeneration true
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgam_min=1301307747,score_FLgam=1301307747] FLgam 0
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"text":"P","color":"light_purple","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"light_purple"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"i","color":"red","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"red"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"c","color":"gold","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"gold"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"t","color":"yellow","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"yellow"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"i","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"o","color":"dark_green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"n","color":"blue","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"blue"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"a","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"r","color":"aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"y","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":" has stopped!","color":"red"}]}
execute @a[m=2,score_PCpl_min=1] ~ ~ ~ function ego:pictionary/full_reset_player
scoreboard objectives remove PC
scoreboard objectives remove PCti
scoreboard objectives remove PCst
scoreboard objectives remove PCpl
scoreboard objectives remove PCrd
scoreboard objectives remove PCcl
scoreboard objectives remove PCaf
scoreboard objectives remove PCtm
scoreboard objectives remove PCss
scoreboard teams remove PC
scoreboard teams remove PCPCd_y
kill @e[tag=PCEntity]
fill 130 18 192 130 6 168 air 0
setblock 158 1 180 redstone_block 0
