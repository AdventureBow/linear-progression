# Drop ticket for failed candidate, then pick another.
execute store result storage linear_progression:respawn x int 1 run scoreboard players get @s respawn_tx
execute store result storage linear_progression:respawn z int 1 run scoreboard players get @s respawn_tz
function linear_progression:respawn/forceload_remove with storage linear_progression:respawn

tag @s remove respawn_unload_wait
scoreboard players reset @s respawn_unload

function linear_progression:respawn/pick_spot
