# Pick XZ in ring [100,250] from death. Forceload so heightmap works, wait 2t, then place.
# (Without forceload, surface tp often fails silently → player stays at bed.)

scoreboard players add @s respawn_attempts 1
execute if score @s respawn_attempts matches 25.. run return run function linear_progression:respawn/restore_vanilla

execute store result score @s respawn_dx run random value -250..250
execute store result score @s respawn_dz run random value -250..250
scoreboard players operation @s respawn_d2 = @s respawn_dx
scoreboard players operation @s respawn_d2 *= @s respawn_dx
scoreboard players operation @s respawn_t = @s respawn_dz
scoreboard players operation @s respawn_t *= @s respawn_dz
scoreboard players operation @s respawn_d2 += @s respawn_t

# Reject if dist² < 100² or > 250² (no chunk work)
execute if score @s respawn_d2 matches ..9999 run return run function linear_progression:respawn/pick_spot
execute if score @s respawn_d2 matches 62501.. run return run function linear_progression:respawn/pick_spot

scoreboard players operation @s respawn_tx = @s death_x
scoreboard players operation @s respawn_tz = @s death_z
scoreboard players operation @s respawn_tx += @s respawn_dx
scoreboard players operation @s respawn_tz += @s respawn_dz

# Force-load destination for heightmap; unload is DELAYED (never same tick as tp).
execute store result storage linear_progression:respawn x int 1 run scoreboard players get @s respawn_tx
execute store result storage linear_progression:respawn z int 1 run scoreboard players get @s respawn_tz
function linear_progression:respawn/forceload_add with storage linear_progression:respawn

# 1 full tick (countdown runs before new picks in tick.mcfunction)
scoreboard players set @s respawn_wait 1
tag @s add respawn_chunk_wait
