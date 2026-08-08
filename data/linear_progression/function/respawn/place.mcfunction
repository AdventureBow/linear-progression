# After 2t wait: surface tp, verify we actually moved, then footing checks.
tag @s remove respawn_chunk_wait
scoreboard players reset @s respawn_wait

execute store result storage linear_progression:respawn x int 1 run scoreboard players get @s respawn_tx
execute store result storage linear_progression:respawn z int 1 run scoreboard players get @s respawn_tz
function linear_progression:respawn/tp_surface with storage linear_progression:respawn

# CRITICAL: if surface tp failed (chunk/heightmap), player is still at bed — treat as reject.
# Accept if within ~12 blocks of target XZ (dist² <= 144).
execute store result score @s respawn_dx run data get entity @s Pos[0]
execute store result score @s respawn_dz run data get entity @s Pos[2]
scoreboard players operation @s respawn_dx -= @s respawn_tx
scoreboard players operation @s respawn_dz -= @s respawn_tz
scoreboard players operation @s respawn_dx *= @s respawn_dx
scoreboard players operation @s respawn_dz *= @s respawn_dz
scoreboard players operation @s respawn_d2 = @s respawn_dx
scoreboard players operation @s respawn_d2 += @s respawn_dz
execute if score @s respawn_d2 matches 145.. run return run function linear_progression:respawn/reject_spot

# Unsafe footing / fluids / no headroom
execute at @s if block ~ ~-1 ~ minecraft:air run return run function linear_progression:respawn/reject_spot
execute at @s if block ~ ~-1 ~ minecraft:cave_air run return run function linear_progression:respawn/reject_spot
execute at @s if block ~ ~-1 ~ minecraft:lava run return run function linear_progression:respawn/reject_spot
execute at @s if block ~ ~-1 ~ minecraft:fire run return run function linear_progression:respawn/reject_spot
execute at @s if block ~ ~-1 ~ minecraft:soul_fire run return run function linear_progression:respawn/reject_spot
execute at @s if block ~ ~-1 ~ minecraft:water run return run function linear_progression:respawn/reject_spot
execute at @s unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air run return run function linear_progression:respawn/reject_spot
execute at @s unless block ~ ~1 ~ minecraft:air unless block ~ ~1 ~ minecraft:cave_air run return run function linear_progression:respawn/reject_spot

# Success — keep forceload ~1.5s so client finishes streaming, then drop ticket
scoreboard players set @s respawn_unload 30
tag @s add respawn_unload_wait
