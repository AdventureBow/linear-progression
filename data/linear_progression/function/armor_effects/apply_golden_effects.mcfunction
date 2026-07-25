# Golden speed boost
execute if predicate linear_progression:armor/golden_armor/golden_head run attribute @s movement_speed modifier add gold_armor_head 0.1 add_multiplied_base
execute if predicate linear_progression:armor/golden_armor/golden_chest run attribute @s movement_speed modifier add gold_armor_chest 0.1 add_multiplied_base
execute if predicate linear_progression:armor/golden_armor/golden_legs run attribute @s movement_speed modifier add gold_armor_legs 0.1 add_multiplied_base
execute if predicate linear_progression:armor/golden_armor/golden_feet run attribute @s movement_speed modifier add gold_armor_feet 0.1 add_multiplied_base

# Tag as wearing golden armor
execute if predicate linear_progression:armor/golden_armor/golden_head run tag @s add gold_armor_head
execute if predicate linear_progression:armor/golden_armor/golden_chest run tag @s add gold_armor_chest
execute if predicate linear_progression:armor/golden_armor/golden_legs run tag @s add gold_armor_legs
execute if predicate linear_progression:armor/golden_armor/golden_feet run tag @s add gold_armor_feet

# tellraw @s "Golden Armor Applied"
