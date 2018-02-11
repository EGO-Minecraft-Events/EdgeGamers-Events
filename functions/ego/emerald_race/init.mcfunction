function ego:floo_network/src/stop_events
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLtp 704022040
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLpvp 0
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLsat 1
scoreboard players set @e[type=armor_stand,tag=FlooStand] FLwea 0
scoreboard objectives add ER dummy Emerald Race
scoreboard objectives setdisplay sidebar ER
scoreboard players set /spawn ER 99
scoreboard objectives add ERcd dummy Emerald Race Countdown
scoreboard objectives add ERcl dummy Emerald Race Clear
scoreboard objectives add ERde deathCount Emerald Race Deaths
scoreboard teams add ERr Emerald Race
scoreboard teams option ERr color green
scoreboard teams option ERr seeFriendlyInvisibles true
scoreboard teams option ERr collisionRule never
scoreboard teams option ERr friendlyfire false
summon area_effect_cloud ~ ~ ~ {Duration:130,Tags:["ERcd"]}
scoreboard teams join ERr /spawn
scoreboard players set @e[type=armor_stand,tag=FlooStand,score_FLgmd_min=0,score_FLgmd=0] FLgmd 704022040
