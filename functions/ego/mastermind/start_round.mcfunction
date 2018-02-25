function ego:mastermind/close_doors
function ego:mastermind/randomize
function ego:mastermind/set_buttons
scoreboard players set @e[type=armor_stand,tag=MMRoom] MMgn 1
scoreboard players set @e[type=armor_stand,tag=MMRoom] MMca 0
scoreboard players reset @e[type=armor_stand,tag=MMRoom] MMpl
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_MMpl_min=2,score_MMpl=2] MMpl 1
scoreboard players set @s MMst 2
