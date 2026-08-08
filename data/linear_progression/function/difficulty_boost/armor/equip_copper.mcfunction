# Copper armor — plain or trimmed (random pattern + weighted material).
# Caller must have run trim/prepare_* if trim_chance will be used.
scoreboard players set @s trim_chance 0
execute if predicate linear_progression:rarity/half run scoreboard players set @s trim_chance 1
execute if score @s trim_chance matches 1 if predicate linear_progression:rarity/rare run scoreboard players set @s trim_chance 2
execute if score @s trim_chance matches 1.. run function linear_progression:difficulty_boost/trim/prepare_hard

# Head
scoreboard players set @s equip_piece 0
execute if predicate linear_progression:rarity/common run scoreboard players set @s equip_piece 1
execute if score @s trim_chance matches 1.. if predicate linear_progression:rarity/half run scoreboard players set @s equip_piece 2
execute if score @s equip_piece matches 1 run item replace entity @s armor.head with copper_helmet
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim slot set value "armor.head"
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim item set value "minecraft:copper_helmet"
execute if score @s equip_piece matches 2 run function linear_progression:difficulty_boost/trim/apply with storage linear_progression:trim

# Chest
scoreboard players set @s equip_piece 0
execute if predicate linear_progression:rarity/half run scoreboard players set @s equip_piece 1
execute if score @s trim_chance matches 1.. if predicate linear_progression:rarity/half run scoreboard players set @s equip_piece 2
execute if score @s equip_piece matches 1 run item replace entity @s armor.chest with copper_chestplate
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim slot set value "armor.chest"
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim item set value "minecraft:copper_chestplate"
execute if score @s equip_piece matches 2 run function linear_progression:difficulty_boost/trim/apply with storage linear_progression:trim

# Legs
scoreboard players set @s equip_piece 0
execute if predicate linear_progression:rarity/common run scoreboard players set @s equip_piece 1
execute if score @s trim_chance matches 1.. if predicate linear_progression:rarity/common run scoreboard players set @s equip_piece 2
execute if score @s equip_piece matches 1 run item replace entity @s armor.legs with copper_leggings
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim slot set value "armor.legs"
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim item set value "minecraft:copper_leggings"
execute if score @s equip_piece matches 2 run function linear_progression:difficulty_boost/trim/apply with storage linear_progression:trim

# Feet
scoreboard players set @s equip_piece 0
execute if predicate linear_progression:rarity/full run scoreboard players set @s equip_piece 1
execute if score @s trim_chance matches 1.. if predicate linear_progression:rarity/full run scoreboard players set @s equip_piece 2
execute if score @s equip_piece matches 1 run item replace entity @s armor.feet with copper_boots
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim slot set value "armor.feet"
execute if score @s equip_piece matches 2 run data modify storage linear_progression:trim item set value "minecraft:copper_boots"
execute if score @s equip_piece matches 2 run function linear_progression:difficulty_boost/trim/apply with storage linear_progression:trim
