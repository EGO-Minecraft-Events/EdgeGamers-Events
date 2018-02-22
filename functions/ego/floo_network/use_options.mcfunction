execute @s[score_FLpvp_min=0,score_FLpvp=0] ~ ~ ~ scoreboard teams join NoPVP @a[team=!NoPVP,score_FLdim_min=1,score_FLdim=1]
execute @s[score_FLpvp_min=1,score_FLpvp=1] ~ ~ ~ effect @a[score_FLdim_min=1,score_FLdim=1] minecraft:weakness 3 100 true
execute @s[score_FLsat_min=1,score_FLsat=1] ~ ~ ~ effect @a[score_FLdim_min=1,score_FLdim=1] minecraft:saturation 2 0 true
execute @s[score_FLwea_min=0,score_FLwea=0] ~ ~ ~ minecraft:weather clear 1000000
execute @s[score_FLwea_min=1,score_FLwea=1] ~ ~ ~ minecraft:weather rain 1000000
execute @s[score_FLwea_min=2,score_FLwea=2] ~ ~ ~ minecraft:weather thunder 1000000
execute @s[score_FLgmd_min=1,score_FLgmd=1] ~ ~ ~ minecraft:gamemode 2 @a[m=0,score_FLdim_min=1,score_FLdim=1]
execute @s[score_FLreg_min=0,score_FLreg=0] ~ ~ ~ scoreboard players set @a[score_FLdim_min=1,score_FLdim=1] FLreg 0
scoreboard players set @a[score_gHP_min=20,score_FLreg_min=1] FLreg 0
scoreboard players set @s[score_FLreg_min=0,score_FLreg=0] FLrec 1
execute @s[score_FLreg_min=1] ~ ~ ~ scoreboard players add @a[score_FLdim_min=1,score_FLdim=1,score_gHP=19] FLreg 1
scoreboard players operation @a[score_FLreg_min=1] FLrec = @s FLreg
execute @a[score_FLreg_min=1] ~ ~ ~ scoreboard players operation @s FLrec -= @s FLreg
effect @a[score_FLrec=-1] minecraft:regeneration 0 0 true
scoreboard players set @a[score_FLrec=-1] FLreg 0
effect @a[score_FLrec_min=0,score_FLrec=0] minecraft:regeneration 2 10 true
