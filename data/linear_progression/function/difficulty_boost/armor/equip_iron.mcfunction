# Base iron armor
execute if predicate linear_progression:rarity/half run scoreboard players set @s trim_chance 1
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run scoreboard players set @s trim_chance 2

execute if predicate linear_progression:rarity/half run item replace entity @s armor.head with iron_helmet
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.head with iron_helmet[minecraft:trim={pattern:"minecraft:ward",material:"minecraft:copper"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.head with iron_helmet[minecraft:trim={pattern:"minecraft:bolt",material:"minecraft:amethyst"}]
execute if predicate linear_progression:rarity/rare run item replace entity @s armor.chest with iron_chestplate
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.chest with iron_chestplate[minecraft:trim={pattern:"minecraft:ward",material:"minecraft:copper"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.chest with iron_chestplate[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:amethyst"}]
execute if predicate linear_progression:rarity/rare run item replace entity @s armor.legs with iron_leggings
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.legs with iron_leggings[minecraft:trim={pattern:"minecraft:snout",material:"minecraft:copper"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.legs with iron_leggings[minecraft:trim={pattern:"minecraft:bolt",material:"minecraft:amethyst"}]
execute if predicate linear_progression:rarity/half run item replace entity @s armor.feet with iron_boots
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.feet with iron_boots[minecraft:trim={pattern:"minecraft:snout",material:"minecraft:copper"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.feet with iron_boots[minecraft:trim={pattern:"minecraft:bolt",material:"minecraft:amethyst"}]
