# Convert only if:
# 1) nearby natural shulkers stay under half of nearby endermen
# 2) absolute cap so shulkers cannot fill the monster mob cap
# Convert chance 1/3 when allowed → target s ≈ e/2 among a spawn wave.

# Count with add-loop (reliable; store+if entity is easy to misread across versions)
scoreboard players set #endermen spawn_count 0
scoreboard players set #shulkers spawn_count 0
execute as @e[type=minecraft:enderman,distance=..48] run scoreboard players add #endermen spawn_count 1
execute as @e[type=minecraft:shulker,tag=natural_shulker,distance=..48] run scoreboard players add #shulkers spawn_count 1

# Hard cap: never more than 6 natural shulkers in this neighborhood (protects mob cap)
execute if score #shulkers spawn_count matches 6.. run return fail

# Ratio cap: require 2 * shulkers < endermen  (shulkers stay ≤ half of endermen)
scoreboard players operation #shulker_limit spawn_count = #shulkers spawn_count
scoreboard players operation #shulker_limit spawn_count += #shulkers spawn_count
execute if score #shulker_limit spawn_count < #endermen spawn_count if predicate linear_progression:chance/33 run function linear_progression:shulker_spawn/convert_to_shulker
