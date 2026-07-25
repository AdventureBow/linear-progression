# Base chainmail armor
execute if predicate linear_progression:rarity/half run scoreboard players set @s trim_chance 1
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run scoreboard players set @s trim_chance 2

execute if predicate linear_progression:rarity/common run item replace entity @s armor.head with chainmail_helmet
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.head with chainmail_helmet[minecraft:trim={pattern:"minecraft:silence",material:"minecraft:emerald"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.head with chainmail_helmet[minecraft:trim={pattern:"minecraft:flow",material:"minecraft:gold"}]
execute if predicate linear_progression:rarity/half run item replace entity @s armor.chest with chainmail_chestplate
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.chest with chainmail_chestplate[minecraft:trim={pattern:"minecraft:eye",material:"minecraft:emerald"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.chest with chainmail_chestplate[minecraft:trim={pattern:"minecraft:dune",material:"minecraft:gold"}]
execute if predicate linear_progression:rarity/rare run item replace entity @s armor.legs with chainmail_leggings
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run item replace entity @s armor.legs with chainmail_leggings[minecraft:trim={pattern:"minecraft:silence",material:"minecraft:emerald"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/rare run item replace entity @s armor.legs with chainmail_leggings[minecraft:trim={pattern:"minecraft:eye",material:"minecraft:gold"}]
execute if predicate linear_progression:rarity/half run item replace entity @s armor.feet with chainmail_boots
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/half run item replace entity @s armor.feet with chainmail_boots[minecraft:trim={pattern:"minecraft:silence",material:"minecraft:emerald"}]
execute if score @s trim_chance matches 2 if predicate linear_progression:rarity/half run item replace entity @s armor.feet with chainmail_boots[minecraft:trim={pattern:"minecraft:dune",material:"minecraft:gold"}]
