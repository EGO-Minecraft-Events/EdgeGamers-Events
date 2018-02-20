scoreboard objectives add constants dummy
scoreboard players set -1 constants -1
scoreboard objectives add FLid dummy FlooNetwork ID
scoreboard objectives add FLtp dummy FlooNetwork TP
scoreboard objectives add FLbk dummy FlooNetwork Book
scoreboard objectives add FLna dummy FlooNetwork Name
scoreboard objectives add FLti dummy FlooNetwork SpawnPoint Timer
scoreboard objectives add FLgam dummy FlooNetwork Game Toggle
scoreboard objectives add FLpvp dummy FlooNetwork PVP toggle
scoreboard objectives add FLsat dummy FlooNetwork Saturation toggle
scoreboard objectives add FLwea dummy FlooNetwork Weather toggle
scoreboard objectives add FLgmd dummy FlooNetwork Gamemode toggle
scoreboard objectives add FLraa dummy FlooNetwork Ranking Actions
scoreboard objectives add FLrac dummy FlooNetwork Ranking Actions Calc
scoreboard objectives add FLdim dummy FlooNetwork Dimension Number
scoreboard objectives add FLvot trigger FlooNetwork Vote Trigger
scoreboard objectives add MCTeams dummy MC Specialty Teams
scoreboard objectives add Health health
scoreboard objectives setdisplay list Health
scoreboard objectives add gSA dummy Global Select All
scoreboard objectives add gDE deathCount Global Death Count
scoreboard objectives add gCS stat.useItem.minecraft.carrot_on_a_stick Global Carrot Stick
scoreboard objectives add gLG stat.leaveGame Global Leave Game
scoreboard objectives add VR1Save dummy Virus Save
scoreboard players set VR1Countdown VR1Save 60
scoreboard players set VR1GameTime VR1Save 600
scoreboard players set VR1Glowing VR1Save 300
scoreboard objectives add APPS dummy
scoreboard objectives add AT dummy
scoreboard objectives add EC dummy
scoreboard objectives add LE dummy
scoreboard objectives add CMD dummy
scoreboard players set ir FLna 227577150
scoreboard players set sr FLna 1639073828
scoreboard players set nr FLna 1411077721
scoreboard players set evilr FLna 1441799265
scoreboard players set dr FLna 284291924
scoreboard players set er FLna 704022040
scoreboard players set qr FLna 1336477430
scoreboard players set 18r FLna 244076999
scoreboard players set epicr FLna 929476859
scoreboard players set saltr FLna 1290793335
scoreboard players set deathr FLna 1625759596
scoreboard players set dirtr FLna 697385017
scoreboard players set mr FLna 2083967759
scoreboard players set fbr FLna 1689433145
scoreboard players set ecr FLna 1390739026
scoreboard players set virus1 FLna 1561350378
scoreboard players set vr1 FLna 1561350378
scoreboard players set virus2 FLna 1561350379
scoreboard players set vr2 FLna 1561350379
scoreboard players set pvp1 FLna 1773738438
scoreboard players set oldctf FLna 1773738438
scoreboard players set ctf FLna 1463087182
scoreboard players set tp FLna 1541518973
scoreboard players set tpl3 FLna 1541518973
scoreboard players set st FLna 1100166785
scoreboard players set ad FLna 637350197
scoreboard players set dp FLna 1625757028
scoreboard players set rb FLna 1299512154
scoreboard players set mm FLna 1807172851
scoreboard players set pc FLna 1511200574
scoreboard players set rr FLna 1698782159
scoreboard players set spawn FLna 236718384
scoreboard players set cmd FLna 674271822
scoreboard players set floo FLna 674271822
scoreboard players set diagonally FLna 674271822
scoreboard players set ts FLna 1971168489
scoreboard players set tstoken FLna 1971168489
scoreboard players set mghub FLna 327765745
scoreboard players set pvphub FLna 743229343
scoreboard players set mmhub FLna 81055981
scoreboard players set racehub FLna 238315678
kill @e[type=armor_stand,tag=FlooStand]
summon armor_stand 397 17 61 {Tags:["FlooStand"],Invulnerable:1,PersistenceRequired:1,Invisible:1,Marker:1,NoGravity:1}
scoreboard players set Acefire97 APPS 0
scoreboard players set Acefire97 MCTeams 1
scoreboard players set ashtongreen00 APPS 0
scoreboard players set ashtongreen00 MCTeams 1
scoreboard players set ENFORCER_GAMING APPS 0
scoreboard players set ENFORCER_GAMING MCTeams 1
scoreboard players set Kilgore90 APPS 0
scoreboard players set Kilgore90 MCTeams 1
scoreboard players set french_man EC 0
scoreboard players set french_man MCTeams 4
scoreboard players set jamboree_lee EC 0
scoreboard players set jamboree_lee MCTeams 4
scoreboard players set CynRyn EC 0
scoreboard players set CynRyn MCTeams 4
scoreboard players set CMDZane AT 0
scoreboard players set CMDZane MCTeams 2
scoreboard players set CMDZane EC 0
scoreboard players set CMDZane MCTeams 4
scoreboard players set Icohedron EC 0
scoreboard players set Icohedron MCTeams 4
scoreboard players set TheDarkOne239 EC 0
scoreboard players set TheDarkOne239 MCTeams 4
scoreboard players set BUTTERLOVER7683 AT 0
scoreboard players set BUTTERLOVER7683 MCTeams 2
scoreboard players set BUTTERLOVER7683 LE 0
scoreboard players set BUTTERLOVER7683 MCTeams 8
scoreboard players set FoxyTheBoomQueen AT 0
scoreboard players set FoxyTheBoomQueen MCTeams 2
scoreboard players set FoxyTheBoomQueen LE 0
scoreboard players set FoxyTheBoomQueen MCTeams 8
scoreboard players set Daa_ EC 0
scoreboard players set Daa_ MCTeams 4
scoreboard players set Daa_ LE 0
scoreboard players set Daa_ MCTeams 8
scoreboard players set idk_lobsters LE 0
scoreboard players set idk_lobsters MCTeams 8
scoreboard players set JadeofallTrades LE 0
scoreboard players set JadeofallTrades MCTeams 8
scoreboard players set Witch_Doctor LE 0
scoreboard players set Witch_Doctor MCTeams 8
scoreboard players set Witch_Doctor CMD 0
scoreboard players set Witch_Doctor MCTeams 16
scoreboard players set FirezFury LE 0
scoreboard players set FirezFury MCTeams 8
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgmd 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLgam 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLraa 28
tellraw @a[score_EC_min=0,score_EC=0] {"text":"","extra":[{"text":"[","color":"gray"},{"text":"Floo","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Floo Network","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 674271822"}},{"text":"]","color":"gray"},{"text":": "},{"text":"Floo Network","color":"green","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Floo Network","color":"green"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 674271822"}},{"text":" has been installed!","color":"gray"}]}
