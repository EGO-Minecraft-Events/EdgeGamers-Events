execute @s[team=!BHTSv] ~ ~ ~ function ego:bh_train_station/clear_player
execute @s[team=!BHTSv] ~ ~ ~ function ego:bh_train_station/to_hider if @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=0,score_BHTSst=2]
function ego:bh_train_station/to_virus if @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=3,score_BHTSst=3]
function ego:bh_train_station/to_hider if @e[type=armor_stand,tag=BHTSStand,score_BHTSst_min=4,score_BHTSst=6]
minecraft:tp @s[team=BHTSh] -1282 12 -98
minecraft:tp @s[team=BHTSh] ~ ~0.1 ~
execute @s[team=BHTSh] ~ ~ ~ function ego:bh_train_station/give_disguise
minecraft:tp @s[team=BHTSh] ~ ~-0.1 ~
scoreboard players set @s BHTSpl 2
