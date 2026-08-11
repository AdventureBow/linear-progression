# Gold armor equip: stamp worn pieces (speed/KB live on the item). Tags track equip state.
function linear_progression:global_systems/stamp/gold_worn

execute if predicate linear_progression:armor/golden_armor/golden_head run tag @s add gold_armor_head
execute if predicate linear_progression:armor/golden_armor/golden_chest run tag @s add gold_armor_chest
execute if predicate linear_progression:armor/golden_armor/golden_legs run tag @s add gold_armor_legs
execute if predicate linear_progression:armor/golden_armor/golden_feet run tag @s add gold_armor_feet
