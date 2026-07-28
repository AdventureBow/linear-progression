# Simulate hostile despawn for natural_shulker only.
# Eligible: not named, not PersistenceRequired:1b.
# Instant: no player within 128.
# Soft: no player within 32 for 30s (600t), then ~1/800 per tick.

execute as @e[type=minecraft:shulker,tag=natural_shulker] at @s run function linear_progression:shulker_spawn/despawn_check
