execute @s[score_SPpvp_min=0,score_SPpvp=0] ~ ~ ~ scoreboard teams join NoPVP @a[team=!NoPVP,score_FLdim_min=1,score_FLdim=1]
execute @s[score_SPsat_min=1,score_SPsat=1] ~ ~ ~ effect @a[score_FLdim_min=1,score_FLdim=1] 23 2 0 true
execute @s[score_SPwea_min=0,score_SPwea=0] ~ ~ ~ weather clear 1000000
execute @s[score_SPwea_min=1,score_SPwea=1] ~ ~ ~ weather rain 1000000
execute @s[score_SPwea_min=2,score_SPwea=2] ~ ~ ~ weather thunder 1000000
execute @s[score_SPgmd_min=1,score_SPgmd=1] ~ ~ ~ gamemode 2 @a[m=0,score_FLdim_min=1,score_FLdim=1]
