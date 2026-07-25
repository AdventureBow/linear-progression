# Check if mob gets armor
execute if predicate linear_progression:rarity/common run scoreboard players set @s armor_chance 1

# If armor is assigned, roll for higher tiers with decreasing chances
execute if score @s armor_chance matches 1 if predicate linear_progression:rarity/rare run scoreboard players set @s armor_chance 2
execute if score @s armor_chance matches 2 if predicate linear_progression:rarity/half run scoreboard players set @s armor_chance 3
execute if score @s armor_chance matches 3 if predicate linear_progression:rarity/common run scoreboard players set @s armor_chance 4

# Apply armor pieces based on tier roll
execute if score @s armor_chance matches 1 run function linear_progression:difficulty_boost/armor/equip_leather
execute if score @s armor_chance matches 2 run function linear_progression:difficulty_boost/armor/equip_chainmail
execute if score @s armor_chance matches 3 run function linear_progression:difficulty_boost/armor/equip_gold
execute if score @s armor_chance matches 4 run function linear_progression:difficulty_boost/armor/equip_iron

# Add boosted tag to prevent running the function again
tag @s add boosted
