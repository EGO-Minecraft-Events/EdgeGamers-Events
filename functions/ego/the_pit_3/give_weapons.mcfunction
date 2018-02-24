clear @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2]
scoreboard players set @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2] FLbk 586508005
execute @s[score_TPiwt_min=0,score_TPiwt=0] ~ ~ ~ give @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2] blaze_rod 1 0 {display:{Name:"A Poking Stick",Lore:["Knockback 3"]},ench:[{id:19,lvl:3}],HideFlags:127}
execute @s[score_TPiwt_min=1,score_TPiwt=1] ~ ~ ~ give @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2] blaze_rod 1 0 {display:{Name:"A Better Poking Stick",Lore:["Knockback 5"]},ench:[{id:19,lvl:3}],HideFlags:127}
execute @s[score_TPiwt_min=2,score_TPiwt=2] ~ ~ ~ give @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2] porkchop 1 0 {display:{Name:"The Holy Porkchop"},ench:[{id:19,lvl:9001}],HideFlags:127}
execute @s[score_TPiwt_min=3,score_TPiwt=3] ~ ~ ~ give @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2] bow 1 0 {display:{Name:"A Bow",Lore:["Punch 2"]},ench:[{id:49,lvl:2},{id:51,lvl:1}],HideFlags:127,Unbreakable:1}
execute @s[score_TPiwt_min=3,score_TPiwt=3] ~ ~ ~ give @a[score_gSA_min=1,score_gSA=1,m=2,score_TPpl_min=2,score_TPpl=2] arrow 1 0 {display:{Name:"An Arrow"},ench:[{id:0,lvl:1}],HideFlags:127}
scoreboard players set @s TPiwt -1
