# Re-arm inventory_changed one tick after global_systems.

execute as @a[tag=gs_retrigger] run advancement revoke @s only linear_progression:detect/inventory_changed
execute as @a[tag=gs_retrigger] run tag @s remove gs_retrigger
