# GS: stamp pack edibles in carry slots (early-out if none present).
execute unless items entity @s container.* #linear_progression:stamp_edibles unless items entity @s weapon.* #linear_progression:stamp_edibles unless items entity @s player.cursor #linear_progression:stamp_edibles run return fail

data modify storage linear_progression:stamp_args item set value "minecraft:glistering_melon_slice"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_glistering_melon"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:sugar"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_sugar"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:nether_wart"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_nether_wart"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:golden_carrot"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_golden_carrot"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:cooked_rabbit"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_cooked_rabbit"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:dried_kelp"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_dried_kelp"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:cooked_cod"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_cooked_cod"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:cooked_salmon"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_cooked_salmon"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:cooked_porkchop"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_cooked_porkchop"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:cooked_beef"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_cooked_beef"
data modify storage linear_progression:stamp_args marker set value "{lp_edible:1b}"
function linear_progression:global_systems/stamp/carry

data modify storage linear_progression:stamp_args item set value "minecraft:cactus"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:edible_cactus"
data modify storage linear_progression:stamp_args marker set value "{lp_cactus_food:2b}"
function linear_progression:global_systems/stamp/carry
