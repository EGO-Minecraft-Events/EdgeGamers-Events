scoreboard players add @s QR 1
tellraw @a[score_gSA_min=1,score_gSA=1] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"QR","color":"white","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Quartz Race","color":"white"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1964796834"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" has finished a lap!","color":"yellow"}]}
playsound minecraft:entity.experience_orb.pickup voice @a
scoreboard players tag @s add QRLap
