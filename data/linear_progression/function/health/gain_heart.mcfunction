# Apply current base_hp and play restore FX. Call after adjusting base_hp.

function linear_progression:health/set_max_hp

execute at @s run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 0.3 0 0.05 200 normal
execute at @s run playsound minecraft:entity.zombie_villager.cure player @s ~ ~ ~ 1 1
