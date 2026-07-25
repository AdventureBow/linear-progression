# Base leather armor
execute if predicate linear_progression:rarity/half run scoreboard players set @s trim_chance 1
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run scoreboard players set @s trim_chance 2

execute if predicate linear_progression:rarity/common run item replace entity @s armor.head with leather_helmet
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.head with leather_helmet[minecraft:trim={pattern:"minecraft:spire",material:"minecraft:diamond"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.head with leather_helmet[minecraft:trim={pattern:"minecraft:wayfinder",material:"minecraft:redstone"}]
execute if predicate linear_progression:rarity/half run item replace entity @s armor.chest with leather_chestplate
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.chest with leather_chestplate[minecraft:trim={pattern:"minecraft:spire",material:"minecraft:diamond"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.chest with leather_chestplate[minecraft:trim={pattern:"minecraft:dune",material:"minecraft:redstone"}]
execute if predicate linear_progression:rarity/common run item replace entity @s armor.legs with leather_leggings
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/common run item replace entity @s armor.legs with leather_leggings[minecraft:trim={pattern:"minecraft:spire",material:"minecraft:diamond"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/common run item replace entity @s armor.legs with leather_leggings[minecraft:trim={pattern:"minecraft:wayfinder",material:"minecraft:redstone"}]
execute if predicate linear_progression:rarity/full run item replace entity @s armor.feet with leather_boots
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/full run item replace entity @s armor.feet with leather_boots[minecraft:trim={pattern:"minecraft:spire",material:"minecraft:diamond"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/full run item replace entity @s armor.feet with leather_boots[minecraft:trim={pattern:"minecraft:wayfinder",material:"minecraft:redstone"}]
