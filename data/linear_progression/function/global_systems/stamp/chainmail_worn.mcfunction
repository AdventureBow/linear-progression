# Stamp worn chainmail only (equip / chainmail tick path).
data modify storage linear_progression:stamp_args marker set value "{lp_chain_speed:1b}"
data modify storage linear_progression:stamp_args item set value "minecraft:chainmail_helmet"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:chainmail_speed_head"
data modify storage linear_progression:stamp_args slot set value "armor.head"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
data modify storage linear_progression:stamp_args item set value "minecraft:chainmail_chestplate"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:chainmail_speed_chest"
data modify storage linear_progression:stamp_args slot set value "armor.chest"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
data modify storage linear_progression:stamp_args item set value "minecraft:chainmail_leggings"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:chainmail_speed_legs"
data modify storage linear_progression:stamp_args slot set value "armor.legs"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
data modify storage linear_progression:stamp_args item set value "minecraft:chainmail_boots"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:chainmail_speed_feet"
data modify storage linear_progression:stamp_args slot set value "armor.feet"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
