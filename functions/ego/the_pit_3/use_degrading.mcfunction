scoreboard players add @s[score_TPdg_min=0] TPdg 1
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ clone -59 10 194 -99 10 154 -54 4 230
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ fill -59 10 194 -99 10 154 air 0 replace double_stone_slab
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ fill -54 4 230 -14 4 270 air 0 replace stone
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ fill -54 4 230 -14 4 270 air 0 replace stained_hardened_clay color=lime
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ fill -54 4 230 -14 4 270 air 0 replace stained_hardened_clay color=yellow
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ fill -54 4 230 -14 4 270 air 0 replace stained_hardened_clay color=orange
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ fill -54 4 230 -14 4 270 air 0 replace stained_hardened_clay color=red
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ fill -54 4 230 -14 4 270 stained_hardened_clay color=lime replace stained_hardened_clay
execute @s[score_TPdg_min=10,score_TPdg=10] ~ ~ ~ fill -54 4 230 -14 4 270 structure_void 0 replace air 0
execute @s[score_TPdg_min=15,score_TPdg=15] ~ ~ ~ fill -35 5 249 -33 5 251 redstone_block 0 replace air 0
execute @s[score_TPdg_min=40,score_TPdg=40] ~ ~ ~ fill -59 10 194 -99 10 154 stained_hardened_clay color=yellow replace stained_hardened_clay color=lime
execute @s[score_TPdg_min=40,score_TPdg=40] ~ ~ ~ fill -59 10 194 -99 10 154 stained_hardened_clay color=red replace stained_hardened_clay color=orange
execute @s[score_TPdg_min=80,score_TPdg=80] ~ ~ ~ fill -80 2 175 -78 2 173 redstone_block 0 replace air 0
execute @s[score_TPdg_min=80,score_TPdg=80] ~ ~ ~ fill -59 10 194 -99 10 154 stained_hardened_clay color=orange replace stained_hardened_clay color=yellow
execute @s[score_TPdg_min=80,score_TPdg=80] ~ ~ ~ fill -59 10 194 -99 10 154 air 0 replace stained_hardened_clay color=red
scoreboard players set @s[score_TPdg_min=80,score_TPdg=80] TPdg 0
