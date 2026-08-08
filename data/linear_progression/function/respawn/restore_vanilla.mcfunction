# Exhausted rolls → vanilla bed/world spawn.
tag @s remove respawn_chunk_wait
tag @s remove respawn_unload_wait
scoreboard players reset @s respawn_wait
scoreboard players reset @s respawn_unload

function linear_progression:respawn/unload_candidate

execute store result storage linear_progression:respawn x int 1 run scoreboard players get @s respawn_sx
execute store result storage linear_progression:respawn y int 1 run scoreboard players get @s respawn_sy
execute store result storage linear_progression:respawn z int 1 run scoreboard players get @s respawn_sz
function linear_progression:respawn/tp_xyz with storage linear_progression:respawn
