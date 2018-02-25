scoreboard players set @s PCst 2
execute @a[score_gSA_min=1,score_gSA=1,m=2,score_PCpl_min=1,score_PCpl=1] ~ ~ ~ function ego:pictionary/add_to_round
fill 130 18 192 130 6 168 air 0
scoreboard players set @e[type=armor_stand,tag=PCStand] PCti2 120
scoreboard players set @e[type=armor_stand,tag=PCStand] PCti 0
