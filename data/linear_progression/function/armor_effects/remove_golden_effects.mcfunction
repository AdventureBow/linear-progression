# Unequip: clear equip tags only (speed/KB are item attribute_modifiers, not entity mods).
execute unless predicate linear_progression:armor/golden_armor/golden_head run tag @s remove gold_armor_head
execute unless predicate linear_progression:armor/golden_armor/golden_chest run tag @s remove gold_armor_chest
execute unless predicate linear_progression:armor/golden_armor/golden_legs run tag @s remove gold_armor_legs
execute unless predicate linear_progression:armor/golden_armor/golden_feet run tag @s remove gold_armor_feet
