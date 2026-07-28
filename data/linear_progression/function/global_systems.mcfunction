# Inventory-change systems (@s = player from detect/inventory_changed).

function linear_progression:global_systems/durability
function linear_progression:global_systems/gold_tool_efficiency

# Revoke next tick so item-modify inventory events don't re-fire this run.
tag @s add gs_retrigger
schedule function linear_progression:global_systems/retrigger 2t append
