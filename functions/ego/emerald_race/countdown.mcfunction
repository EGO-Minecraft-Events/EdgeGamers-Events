scoreboard players add @s ERcd 1
execute @s[score_ERcd_min=20,score_ERcd=20] ~ ~ ~ tellraw @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"ER","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":"]","color":"gray"},{"text":": "},{"text":"5","color":"yellow","bold":"true"}]}
execute @s[score_ERcd_min=20,score_ERcd=20] ~ ~ ~ execute @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 0.5
execute @s[score_ERcd_min=40,score_ERcd=40] ~ ~ ~ tellraw @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"ER","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":"]","color":"gray"},{"text":": "},{"text":"4","color":"yellow","bold":"true"}]}
execute @s[score_ERcd_min=40,score_ERcd=40] ~ ~ ~ execute @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 1
execute @s[score_ERcd_min=60,score_ERcd=60] ~ ~ ~ tellraw @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"ER","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":"]","color":"gray"},{"text":": "},{"text":"3","color":"yellow","bold":"true"}]}
execute @s[score_ERcd_min=60,score_ERcd=60] ~ ~ ~ execute @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 1.5
execute @s[score_ERcd_min=80,score_ERcd=80] ~ ~ ~ tellraw @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"ER","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":"]","color":"gray"},{"text":": "},{"text":"2","color":"yellow","bold":"true"}]}
execute @s[score_ERcd_min=80,score_ERcd=80] ~ ~ ~ execute @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 2
execute @s[score_ERcd_min=100,score_ERcd=100] ~ ~ ~ tellraw @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"ER","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":"]","color":"gray"},{"text":": "},{"text":"1","color":"yellow","bold":"true"}]}
execute @s[score_ERcd_min=100,score_ERcd=100] ~ ~ ~ execute @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] ~ ~ ~ playsound minecraft:block.note.pling voice @a[c=1] ~ ~ ~ 2
execute @s[score_ERcd_min=120,score_ERcd=120] ~ ~ ~ execute @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] ~ ~ ~ playsound minecraft:entity.wither.death voice @a[c=1]
execute @s[score_ERcd_min=120,score_ERcd=120] ~ ~ ~ tellraw @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"ER","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Emerald Race","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 704022040"}},{"text":"]","color":"gray"},{"text":": "},{"text":"GO!","color":"green","bold":"true"}]}
execute @s[score_ERcd_min=120,score_ERcd=120] ~ ~ ~ title @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] title {"text":"GO!","color":"green"}
execute @s[score_ERcd_min=120,score_ERcd=120] ~ ~ ~ fill 269 19 -94 255 19 -94 stonebrick 0 replace redstone_block 0
execute @s[score_ERcd_min=120,score_ERcd=120] ~ ~ ~ fill 269 19 -98 255 19 -98 redstone_block 0 replace stonebrick 0
