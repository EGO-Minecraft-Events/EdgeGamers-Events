function ego:mastermind_hell/reset_player
replaceitem entity @s[m=2] slot.hotbar.0 coal_block 64 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.1 redstone_block 64 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.2 lapis_block 64 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.3 emerald_block 64 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.4 iron_block 64 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.5 gold_block 64 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.6 diamond_block 64 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.7 quartz_block 64 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.0 coal_block 1 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.1 redstone_block 1 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.2 lapis_block 1 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.3 emerald_block 1 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.4 iron_block 1 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.5 gold_block 1 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.6 diamond_block 1 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=1] slot.hotbar.7 quartz_block 1 0 {CanPlaceOn:["minecraft:stonebrick"],HideFlags:127}
replaceitem entity @s[m=2] slot.hotbar.8 diamond_pickaxe 1 0 {CanDestroy:["minecraft:coal_block","minecraft:redstone_block","minecraft:lapis_block","minecraft:emerald_block","minecraft:iron_block","minecraft:gold_block","minecraft:diamond_block","minecraft:quartz_block"],Unbreakable:1,ench:[{id:32,lvl:32767}],HideFlags:127}
scoreboard players set @s MMHpl 2
