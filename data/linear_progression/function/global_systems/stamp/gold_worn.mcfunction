# Stamp worn gold armor only (equip path).
data modify storage linear_progression:stamp_args marker set value "{lp_gold_armor:1b}"
data modify storage linear_progression:stamp_args item set value "minecraft:golden_helmet"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:gold_armor_kb_head"
data modify storage linear_progression:stamp_args slot set value "armor.head"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
data modify storage linear_progression:stamp_args item set value "minecraft:golden_chestplate"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:gold_armor_kb_chest"
data modify storage linear_progression:stamp_args slot set value "armor.chest"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
data modify storage linear_progression:stamp_args item set value "minecraft:golden_leggings"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:gold_armor_kb_legs"
data modify storage linear_progression:stamp_args slot set value "armor.legs"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
data modify storage linear_progression:stamp_args item set value "minecraft:golden_boots"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:gold_armor_kb_feet"
data modify storage linear_progression:stamp_args slot set value "armor.feet"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
