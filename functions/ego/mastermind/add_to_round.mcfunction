function ego:mastermind/reset_player
replaceitem entity @s[m=2] slot.hotbar.0 wool 64 1 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.1 wool 64 2 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.2 wool 64 6 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.3 wool 64 9 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.4 wool 64 5 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.5 wool 64 14 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.0 wool 1 1 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.1 wool 1 2 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.2 wool 1 6 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.3 wool 1 9 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.4 wool 1 5 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.5 wool 1 14 {CanPlaceOn:["minecraft:glass"],display:{Lore:["Mastermind Wool"]},HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.6 shears 1 0 {CanDestroy:["minecraft:wool"],Unbreakable:1,ench:[{id:32,lvl:9001}],display:{Lore:["Mastermind Shears"]}}
replaceitem entity @s[m=2] slot.hotbar.8 golden_apple 64 0
replaceitem entity @s[m=1] slot.hotbar.6 sign 1 0 {ench:[{id:0,lvl:1}],HideFlags:127,display:{Name:"OP sign"}}
scoreboard players set @s MMpl 2
