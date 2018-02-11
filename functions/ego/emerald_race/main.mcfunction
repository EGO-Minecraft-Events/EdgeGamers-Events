scoreboard players add @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51] FLid 0
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,score_FLid=-704022041] FLid 704022040
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,score_FLid_min=-704022039] FLid 704022040
execute @e[type=area_effect_cloud,tag=ERcountdown] ~ ~ ~ function ego:emerald_race/countdown
kill @e[x=219,y=5,z=-121,dx=75,dy=100,dz=51,type=item]
scoreboard players add @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2] ERcl 0
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,score_ERcl_min=0,score_ERcl=0] ERde 1
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,score_ERcl_min=0,score_ERcl=0] ERcl 1
effect @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,score_ERde>_min=1,score_ERde>=1] clear
clear @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,score_ERde>_min=1,score_ERde>=1]
scoreboard players set @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,score_ERde>_min=1,score_ERde>=1] FLbk 704022040
scoreboard teams join ERr @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,team=!ERr]
effect @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,team=ERr] minecraft:invisibility 3 0 true
execute @a[x=219,y=5,z=-121,dx=75,dy=100,dz=51,m=2,team=ERr] ~ ~ ~ function ego:emerald_race/check_lap
