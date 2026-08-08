# Async better-respawn timers (must run BEFORE try_place/pick so wait=2 is full 2 ticks).

# Chunk wait → place
execute as @a[tag=respawn_chunk_wait,scores={respawn_wait=1..}] run scoreboard players remove @s respawn_wait 1
execute as @a[tag=respawn_chunk_wait,scores={respawn_wait=0}] run function linear_progression:respawn/place

# Delayed forceload remove after successful place (never same tick as tp)
execute as @a[tag=respawn_unload_wait,scores={respawn_unload=1..}] run scoreboard players remove @s respawn_unload 1
execute as @a[tag=respawn_unload_wait,scores={respawn_unload=0}] run function linear_progression:respawn/finish_unload
