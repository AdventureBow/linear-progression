# @s = natural_shulker. Skip persistent / named.
execute if data entity @s {PersistenceRequired:1b} run return fail
execute if data entity @s CustomName run return fail

# Instant despawn (>128 from all players)
execute unless entity @a[distance=..128] run return run function linear_progression:shulker_spawn/despawn_one

# Within 32 of a player: reset idle timer (no soft despawn)
execute if entity @a[distance=..32] run scoreboard players set @s shulker_idle 0
execute if entity @a[distance=..32] run return fail

# Soft ring (32–128): count idle. 60 slow_ticks × 10t = 600t = 30s
scoreboard players add @s shulker_idle 1
execute if score @s shulker_idle matches 60.. if predicate linear_progression:soft_despawn run function linear_progression:shulker_spawn/despawn_one
