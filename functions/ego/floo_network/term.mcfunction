function ego:floo_network/stop_events
scoreboard objectives remove MCTeams
scoreboard objectives remove FLid
scoreboard objectives remove FLtp
scoreboard objectives remove FLbk
scoreboard objectives remove FLna
scoreboard objectives remove FLti
scoreboard objectives remove FLgam
scoreboard objectives remove FLpvp
scoreboard objectives remove FLsat
scoreboard objectives remove FLwea
scoreboard objectives remove FLgmd
scoreboard objectives remove FLreg
scoreboard objectives remove FLrec
scoreboard objectives remove FLraa
scoreboard objectives remove FLrac
scoreboard objectives remove FLdim
scoreboard objectives remove FLvot
scoreboard objectives setdisplay list
scoreboard objectives remove gSA
scoreboard objectives remove gDE
scoreboard objectives remove gCS
scoreboard objectives remove gLG
scoreboard objectives remove gTO
scoreboard objectives remove gTEMP
scoreboard objectives remove gHP
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"Floo","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Floo Network","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 69110609"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Floo Network","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Floo Network","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 69110609"}},{"text":" has been uninstalled!","color":"gray"}]}
kill @e[type=armor_stand,tag=FlooStand]
