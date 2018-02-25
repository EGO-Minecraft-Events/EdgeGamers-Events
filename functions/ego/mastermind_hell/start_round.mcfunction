function ego:mastermind_hell/close_doors
function ego:mastermind_hell/randomize
function ego:mastermind_hell/set_buttons
scoreboard players set @e[type=armor_stand,tag=MMHRoom] MMHgn 1
scoreboard players set @e[type=armor_stand,tag=MMHRoom] MMHca 0
scoreboard players reset @e[type=armor_stand,tag=MMHRoom] MMHpl
scoreboard players set @a[score_gSA_min=1,score_gSA=1,score_MMHpl_min=2,score_MMHpl=2] MMHpl 1
scoreboard players set @s MMHst 2
