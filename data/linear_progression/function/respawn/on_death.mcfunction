# Overworld deaths only; Nether/End keep vanilla bed/spawn.
execute unless dimension minecraft:overworld run return fail

execute store result score @s death_x run data get entity @s Pos[0]
execute store result score @s death_y run data get entity @s Pos[1]
execute store result score @s death_z run data get entity @s Pos[2]
tag @s remove respawn_delay
tag @s add await_respawn_place
