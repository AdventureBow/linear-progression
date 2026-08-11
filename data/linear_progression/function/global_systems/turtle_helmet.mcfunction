# GS: stamp turtle helmets in carry + head (early-out if none).
execute unless items entity @s container.* minecraft:turtle_helmet unless items entity @s weapon.* minecraft:turtle_helmet unless items entity @s armor.head minecraft:turtle_helmet unless items entity @s player.cursor minecraft:turtle_helmet run return fail

data modify storage linear_progression:stamp_args item set value "minecraft:turtle_helmet"
data modify storage linear_progression:stamp_args modifier set value "linear_progression:turtle_helmet"
data modify storage linear_progression:stamp_args marker set value "{lp_turtle:1b}"
function linear_progression:global_systems/stamp/carry
data modify storage linear_progression:stamp_args slot set value "armor.head"
function linear_progression:global_systems/stamp/one with storage linear_progression:stamp_args
