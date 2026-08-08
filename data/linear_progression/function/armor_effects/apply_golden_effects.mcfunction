# Gold armor: speed + KB live on the item (attribute_modifiers). Stamp if needed.
# Tags only track equip state for unequip detection.
function linear_progression:armor_effects/stamp_gold_kb_armor

execute if predicate linear_progression:armor/golden_armor/golden_head run tag @s add gold_armor_head
execute if predicate linear_progression:armor/golden_armor/golden_chest run tag @s add gold_armor_chest
execute if predicate linear_progression:armor/golden_armor/golden_legs run tag @s add gold_armor_legs
execute if predicate linear_progression:armor/golden_armor/golden_feet run tag @s add gold_armor_feet
