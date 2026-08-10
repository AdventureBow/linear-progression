# Inventory-change systems (@s = player from detect/inventory_changed).

function linear_progression:global_systems/durability
function linear_progression:global_systems/gold_tool_efficiency
function linear_progression:global_systems/gold_armor_kb
function linear_progression:global_systems/edible_food

# Per-player rearm: tick counts down gs_rearm, then revokes advancement for this player only.
# (No global schedule — avoids stacked schedules when many players shuffle inventory.)
scoreboard players set @s gs_rearm 2
