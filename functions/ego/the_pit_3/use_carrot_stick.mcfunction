scoreboard players set @s gTEMP 0
scoreboard players set @s gTEMP 1 {SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"Head to the lobby",Lore:["Right click to use!"]}}}}
scoreboard players set @s gTEMP 2 {SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"Head to the spectator area",Lore:["Right click to use!"]}}}}
scoreboard players set @s gTEMP 3 {SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"Toggle spectator status",Lore:["Right click to use!"]}}}}
scoreboard players set @s[score_gTEMP_min=1,score_gTEMP=1] FLtp 586508005
execute @s[score_gTEMP_min=1,score_gTEMP=1] ~ ~ ~ function ego:the_pit_3/give_items_in_lobby
minecraft:tp @s[score_gTEMP_min=2,score_gTEMP=2] -110 17 205 -135 0
execute @s[score_gTEMP_min=2,score_gTEMP=2] ~ ~ ~ function ego:the_pit_3/give_items_in_spectate
scoreboard players set @s[score_gTEMP_min=3,score_gTEMP=3,score_TPpl_min=1,score_TPpl=1] TPpl 4
scoreboard players set @s[score_gTEMP_min=3,score_gTEMP=3,score_TPpl_min=3,score_TPpl=3] TPpl 1
scoreboard players set @s[score_gTEMP_min=3,score_gTEMP=3,score_TPpl_min=4,score_TPpl=4] TPpl 3
