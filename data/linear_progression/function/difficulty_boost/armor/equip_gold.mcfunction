# Base golden armor
execute if predicate linear_progression:rarity/rare run scoreboard players set @s trim_chance 1
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run scoreboard players set @s trim_chance 2

execute if predicate linear_progression:rarity/common run item replace entity @s armor.head with golden_helmet
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/common run item replace entity @s armor.head with golden_helmet[minecraft:trim={pattern:"minecraft:raiser",material:"minecraft:netherite"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/common run item replace entity @s armor.head with golden_helmet[minecraft:trim={pattern:"minecraft:dune",material:"minecraft:iron"}]
execute if predicate linear_progression:rarity/half run item replace entity @s armor.chest with golden_chestplate
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.chest with golden_chestplate[minecraft:trim={pattern:"minecraft:tide",material:"minecraft:netherite"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.chest with golden_chestplate[minecraft:trim={pattern:"minecraft:snout",material:"minecraft:iron"}]
execute if predicate linear_progression:rarity/half run item replace entity @s armor.legs with golden_leggings
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/common run item replace entity @s armor.legs with golden_leggings[minecraft:trim={pattern:"minecraft:raiser",material:"minecraft:netherite"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/common run item replace entity @s armor.legs with golden_leggings[minecraft:trim={pattern:"minecraft:snout",material:"minecraft:iron"}]
execute if predicate linear_progression:rarity/common run item replace entity @s armor.feet with golden_boots
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/common run item replace entity @s armor.feet with golden_boots[minecraft:trim={pattern:"minecraft:tide",material:"minecraft:netherite"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/common run item replace entity @s armor.feet with golden_boots[minecraft:trim={pattern:"minecraft:snout",material:"minecraft:iron"}]
