# One tick after vanilla respawn. Arms async place (does not tp this tick).
tag @s remove respawn_delay

execute unless dimension minecraft:overworld run return fail

# Save vanilla respawn point for fail-safe
execute store result score @s respawn_sx run data get entity @s Pos[0]
execute store result score @s respawn_sy run data get entity @s Pos[1]
execute store result score @s respawn_sz run data get entity @s Pos[2]

# Distance death → vanilla respawn (squared horizontal)
scoreboard players operation @s respawn_dx = @s respawn_sx
scoreboard players operation @s respawn_dz = @s respawn_sz
scoreboard players operation @s respawn_dx -= @s death_x
scoreboard players operation @s respawn_dz -= @s death_z
scoreboard players operation @s respawn_dx *= @s respawn_dx
scoreboard players operation @s respawn_dz *= @s respawn_dz
scoreboard players operation @s respawn_d2 = @s respawn_dx
scoreboard players operation @s respawn_d2 += @s respawn_dz

# Within 300 of bed/world spawn → keep vanilla
execute if score @s respawn_d2 matches ..90000 run return fail

scoreboard players set @s respawn_attempts 0
function linear_progression:respawn/pick_spot
