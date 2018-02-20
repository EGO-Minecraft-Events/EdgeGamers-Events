effect @s minecraft:saturation 2 0 true
minecraft:gamemode 2 @s[m=0]
execute @e[type=armor_stand,tag=FlooStand,score_FLpvp_min=0,score_FLpvp=0] ~ ~ ~ scoreboard teams join NoPVP @a[x=397,y=17,z=61,r=5,m=2]
scoreboard players add @s[m=!3] FLti 1
scoreboard players operation @s[score_FLti_min=10] FLtp = @e[type=armor_stand,tag=FlooStand,score_FLtp_min=1] FLtp
scoreboard players set @s[score_FLti_min=10] FLti 0
