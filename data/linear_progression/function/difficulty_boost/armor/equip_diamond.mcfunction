# Diamond — plain or trimmed (random pattern + master material weights).
scoreboard players set @s trim_chance 0
execute if predicate linear_progression:rarity/common run scoreboard players set @s trim_chance 1
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run scoreboard players set @s trim_chance 2
execute if score @s trim_chance matches 1.. run function linear_progression:difficulty_boost/trim/prepare_master

# Head
scoreboard players set @s equip_piece 0
execute if predicate linear_progression:rarity/rare run scoreboard players set @s equip_piece 1
execute if score @s trim_chance matches 1.. if predicate linear_progression:rarity/rare run scoreboard players set @s equip_piece 2
execute if score @s equip_piece matches 1 run item replace entity @s armor.head with diamond_helmet
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim slot set value "armor.head"
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim item set value "minecraft:diamond_helmet"
execute if score @s equip_piece matches 2 run function linear_progression:difficulty_boost/trim/apply with storage linear_progression:trim

# Chest
scoreboard players set @s equip_piece 0
execute if predicate linear_progression:rarity/mythic run scoreboard players set @s equip_piece 1
execute if score @s trim_chance matches 1.. if predicate linear_progression:rarity/mythic run scoreboard players set @s equip_piece 2
execute if score @s equip_piece matches 1 run item replace entity @s armor.chest with diamond_chestplate
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim slot set value "armor.chest"
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim item set value "minecraft:diamond_chestplate"
execute if score @s equip_piece matches 2 run function linear_progression:difficulty_boost/trim/apply with storage linear_progression:trim

# Legs
scoreboard players set @s equip_piece 0
execute if predicate linear_progression:rarity/rare run scoreboard players set @s equip_piece 1
execute if score @s trim_chance matches 1.. if predicate linear_progression:rarity/rare run scoreboard players set @s equip_piece 2
execute if score @s equip_piece matches 1 run item replace entity @s armor.legs with diamond_leggings
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim slot set value "armor.legs"
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim item set value "minecraft:diamond_leggings"
execute if score @s equip_piece matches 2 run function linear_progression:difficulty_boost/trim/apply with storage linear_progression:trim

# Feet
scoreboard players set @s equip_piece 0
execute if predicate linear_progression:rarity/half run scoreboard players set @s equip_piece 1
execute if score @s trim_chance matches 1.. if predicate linear_progression:rarity/half run scoreboard players set @s equip_piece 2
execute if score @s equip_piece matches 1 run item replace entity @s armor.feet with diamond_boots
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim slot set value "armor.feet"
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim item set value "minecraft:diamond_boots"
execute if score @s equip_piece matches 2 run function linear_progression:difficulty_boost/trim/apply with storage linear_progression:trim
