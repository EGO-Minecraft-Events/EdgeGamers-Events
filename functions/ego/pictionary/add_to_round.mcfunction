function ego:pictionary/reset_player
execute @r[type=area_effect_cloud,tag=PCTopic,score_PCrd_min=0,score_PCrd=0] ~ ~ ~ function ego:pictionary/choose_topic
replaceitem entity @s slot.weapon.offhand shears 1 0 {display:{Name:"Special Shears!",Lore:["Destroys wool... Destroy ALL THE WOOL MUAHAHAHA"]},Unbreakable:1,CanDestroy:["minecraft:wool"],ench:[{id:32,lvl:32767}],HideFlags:127}
replaceitem entity @s slot.hotbar.0 wool 64 14 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
replaceitem entity @s slot.hotbar.1 wool 64 1 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
replaceitem entity @s slot.hotbar.2 wool 64 4 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
replaceitem entity @s slot.hotbar.3 wool 64 5 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
replaceitem entity @s slot.hotbar.4 wool 64 3 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
replaceitem entity @s slot.hotbar.5 wool 64 10 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
replaceitem entity @s slot.hotbar.6 wool 64 0 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
replaceitem entity @s slot.hotbar.7 wool 64 12 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
replaceitem entity @s slot.hotbar.8 wool 64 15 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
give @s wool 64 2 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
give @s wool 64 6 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
give @s wool 64 8 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
give @s wool 64 7 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
give @s wool 64 9 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
give @s wool 64 11 {display:{Name:"Pictionary Wool!",Lore:["Wool for Pictionary.. Fear the Shears!!"]},CanPlaceOn:["minecraft:quartz_block"],CanDestroy:["minecraft:wool"],HideFlags:127}
minecraft:tp @s 133 4 180 90 0
execute @s ~ ~ ~ pictionary artist set @p[r=0]
tellraw @a {"text":"","extra":[{"text":"[","color":"gray"},{"text":"PC","color":"dark_aqua","bold":"true","hoverEvent":{"action":"show_text","value":{"text":"Pictionary","color":"dark_aqua"}},"clickEvent":{"action":"run_command","value":"/scoreboard players set @p FLtp 1301307747"}},{"text":"]","color":"gray"},{"text":": "},{"selector":"@s"},{"text":" is the artist.","color":"gray"}]}
scoreboard players set @e[type=armor_stand,tag=PCStand] PCst 2
