# Base diamond armor
execute if predicate linear_progression:rarity/common run scoreboard players set @s trim_chance 1
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run scoreboard players set @s trim_chance 2

execute if predicate linear_progression:rarity/rare run item replace entity @s armor.head with diamond_helmet
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run item replace entity @s armor.head with diamond_helmet[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:emerald"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/rare run item replace entity @s armor.head with diamond_helmet[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:quartz"}]
execute if predicate linear_progression:rarity/mythic run item replace entity @s armor.chest with diamond_chestplate
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/mythic run item replace entity @s armor.chest with diamond_chestplate[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:emerald"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/rare run item replace entity @s armor.chest with diamond_chestplate[minecraft:trim={pattern:"minecraft:sentry",material:"minecraft:quartz"}]
execute if predicate linear_progression:rarity/rare run item replace entity @s armor.legs with diamond_leggings
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run item replace entity @s armor.legs with diamond_leggings[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:emerald"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.legs with diamond_leggings[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:quartz"}]
execute if predicate linear_progression:rarity/half run item replace entity @s armor.feet with diamond_boots
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.feet with diamond_boots[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:emerald"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.feet with diamond_boots[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:quartz"}]
