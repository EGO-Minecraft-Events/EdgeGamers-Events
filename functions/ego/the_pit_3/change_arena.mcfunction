execute @s[score_TPiat_min=0,score_TPiat=0] ~ ~ ~ function ego:the_pit_3/arena_to_reg_small
execute @s[score_TPiat_min=1,score_TPiat=1] ~ ~ ~ function ego:the_pit_3/arena_to_reg_large
execute @s[score_TPiat_min=2,score_TPiat=2] ~ ~ ~ function ego:the_pit_3/arena_to_deg_small
execute @s[score_TPiat_min=3,score_TPiat=3] ~ ~ ~ function ego:the_pit_3/arena_to_deg_large
setblock -79 5 174 redstone_block
setblock -79 5 174 air 0
scoreboard players set @s TPdg 0
scoreboard players set @s[score_TPiat_min=0,score_TPiat=1] TPdg -1
scoreboard players operation @s TPat = @s TPiat
scoreboard players set @s TPiat -1
