execute @s[score_TPiat_min=0,score_TPiat=0] ~ ~ ~ function ego:the_pit_3/arena_to_reg_small
execute @s[score_TPiat_min=1,score_TPiat=1] ~ ~ ~ function ego:the_pit_3/arena_to_reg_large
execute @s[score_TPiat_min=2,score_TPiat=2] ~ ~ ~ function ego:the_pit_3/arena_to_deg_small
execute @s[score_TPiat_min=3,score_TPiat=3] ~ ~ ~ function ego:the_pit_3/arena_to_deg_large
fill -78 6 175 -80 6 173 redstone_block 0 replace air 0
fill -78 6 175 -80 6 173 air 0 replace redstone_block 0
scoreboard players set @s TPiat -1
