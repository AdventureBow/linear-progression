# Remove golden speed boost
execute unless predicate linear_progression:armor/golden_armor/golden_head run attribute @s movement_speed modifier remove gold_armor_head
execute unless predicate linear_progression:armor/golden_armor/golden_chest run attribute @s movement_speed modifier remove gold_armor_chest
execute unless predicate linear_progression:armor/golden_armor/golden_legs run attribute @s movement_speed modifier remove gold_armor_legs
execute unless predicate linear_progression:armor/golden_armor/golden_feet run attribute @s movement_speed modifier remove gold_armor_feet

# Remove tag wearing golden armor
execute unless predicate linear_progression:armor/golden_armor/golden_head run tag @s remove gold_armor_head
execute unless predicate linear_progression:armor/golden_armor/golden_chest run tag @s remove gold_armor_chest
execute unless predicate linear_progression:armor/golden_armor/golden_legs run tag @s remove gold_armor_legs
execute unless predicate linear_progression:armor/golden_armor/golden_feet run tag @s remove gold_armor_feet

# tellraw @s "Golden Armor Removed"
