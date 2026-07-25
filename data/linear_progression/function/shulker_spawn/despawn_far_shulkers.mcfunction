# Natural shulkers do not despawn like endermen and COUNT toward the monster mob cap.
# Clear them when far so endermen / other hostiles can spawn again.
execute as @e[type=minecraft:shulker,tag=natural_shulker] at @s unless entity @a[distance=..48] run function linear_progression:shulker_spawn/despawn_one
